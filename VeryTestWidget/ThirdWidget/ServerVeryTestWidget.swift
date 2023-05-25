//
//  ServerVeryTestWidget.swift
//  VeryTestProgram
//
//  Created by Иван on 25.05.2023.
//

import Foundation
import Alamofire
import WidgetKit
import SwiftUI

struct ServerWidgetProvider: TimelineProvider {
    
    //  хз зачем это
    func placeholder(in context: Context) -> ServerWidgetSimpleEntry {
        ServerWidgetSimpleEntry(date: Date(), number: 100)
    }

    //  Показ при инициализации(ещё в галерее)
    func getSnapshot(in context: Context, completion: @escaping (ServerWidgetSimpleEntry) -> ()) {
        let entry = ServerWidgetSimpleEntry(date: Date(), number: 560)
        completion(entry)
    }

    //  Установка данных и промежутков обновления(это и есть таймлайн)
    func getTimeline(in context: Context, completion: @escaping (Timeline<ServerWidgetSimpleEntry>) -> ()) {
        
        Task{
            let date = Date()
            let newDate = Calendar.current.date(byAdding: .minute, value: 5, to: date)!
        
            AF
                .request("http://192.168.0.158:3003/somethink")
                .responseDecodable(of: somethink.self){ resp in
                    
                    if let val = resp.value{
                        
                        let entry = ServerWidgetSimpleEntry(date: date, number: val.some)
                        let timeline = Timeline(entries: [entry], policy: .after(newDate))
                        completion(timeline)
                    }
                    else{
                        let entry = ServerWidgetSimpleEntry(date: date, number: 404)
                        let timeline = Timeline(entries: [entry], policy: .after(newDate))
                        completion(timeline)
                    }
                }
        }
        
    }
}

//  Модель данных
struct ServerWidgetSimpleEntry: TimelineEntry {
    let date: Date
    let number: Int
}

//  Просто View виджета
struct ServerWidgetEntryView : View {
    var entry: ServerWidgetProvider.Entry

    var body: some View {
        Text(String(entry.number))
    }
}

//  Основная структура виджета, где сливается View и данные
struct ServerWidget: Widget {
    let kind: String = "VeryTestWidget3"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: ServerWidgetProvider()) { entry in
            ServerWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My server Widget")
        .description("This is an example server widget.")
        .supportedFamilies([.systemSmall])
    }
}



struct somethink: Codable{
    var some: Int
}
