//
//  VeryTestWidget.swift
//  VeryTestWidget
//
//  Created by Иван on 23.05.2023.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    
    //  хз зачем это
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), number: 100)
    }

    //  Показ при инициализации(ещё в галерее)
    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), number: 900)
        completion(entry)
    }

    //  Установка данных и промежутков обновления(это и есть таймлайн)
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        
        let date = Date()
        let entry = SimpleEntry(date: date, number: Int.random(in: 0...100))
        
        //  Добавление к текущему времени пяти минут
        let nextUpdate = Calendar.current.date(byAdding: .minute, value: 5, to: date)!
        
        //  Таймлайн из одного элемента, что сбрасывается каждые 5 минут
        let timeline = Timeline(entries: [entry], policy: .after(nextUpdate))
        
        completion(timeline)
    }
}

//  Модель данных
struct SimpleEntry: TimelineEntry {
    let date: Date
    let number: Int
}

//  Просто View виджета
struct VeryTestWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        Text(String(entry.number))
    }
}

//  Основная структура виджета, где сливается View и данные
struct VeryTestWidget: Widget {
    let kind: String = "VeryTestWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            VeryTestWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}
