//
//  MostVeryTestWidget.swift
//  VeryTestWidgetExtension
//
//  Created by Иван on 25.05.2023.
//

import Foundation

import WidgetKit
import SwiftUI

struct MostProvider: IntentTimelineProvider {
    
    //  хз зачем это
    func placeholder(in context: Context) -> MostSimpleEntry {
        MostSimpleEntry(date: Date(), color: "green")
    }
    
    //  Показ при инициализации(ещё в галерее)
    func getSnapshot(for configuration: ColorSelectionIntent, in context: Context, completion: @escaping (MostSimpleEntry) -> Void) {
        let entry = MostSimpleEntry(date: Date(), color: "green")
        completion(entry)
    }

    //  Установка данных и промежутков обновления(это и есть таймлайн)
    func getTimeline(for configuration: ColorSelectionIntent, in context: Context, completion: @escaping (Timeline<MostSimpleEntry>) -> ()) {
        
        let date = Date()
        let nextDate = Calendar.current.date(byAdding: .minute, value: 5, to: date)!
        
        let entry = MostSimpleEntry(date: date, color: color(for: configuration))
        
        let timeLine = Timeline(entries: [entry], policy: .after(nextDate))
        completion(timeLine)
    }
    
    func color(for configuration: ColorSelectionIntent) -> String {
        switch configuration.Color{
        case .green:
            return "green"
            
        case .red:
            return "red"
            
        case .blue:
            return "blue"
            
        default:
            return "green"
        }
    }
}

//  Модель данных
struct MostSimpleEntry: TimelineEntry {
    let date: Date
    let color: String
}

//  Просто View виджета
struct MostVeryTestWidgetEntryView: View {
    var entry: MostProvider.Entry

    var body: some View {
        ZStack{
            Color(entry.color)
            Text("\(entry.date)")
        }
    }
}

//  Основная структура виджета, где сливается View и данные
struct MostVeryTestWidget: Widget {
    let kind: String = "VeryTestWidget2"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ColorSelectionIntent.self, provider: MostProvider()){ entry in
            MostVeryTestWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget two")
        .description("This is an example second widget.")
        .supportedFamilies([.systemSmall])
    }
}
