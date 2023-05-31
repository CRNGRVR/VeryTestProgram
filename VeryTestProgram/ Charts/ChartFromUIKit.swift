//
//  ChartFromUIKit.swift
//  VeryTestProgram
//
//  Created by Иван on 30.05.2023.
//

import Foundation
import Charts
import SwiftUI

struct ChartFromUIKit: UIViewRepresentable {
    
    let entries: [BarChartDataEntry]
    
    func makeUIView(context: Context) -> BarChartView {
        return BarChartView()
    }
    
    func updateUIView(_ uiView: BarChartView, context: Context) {
        
        let dataset = BarChartDataSet(entries: entries)
        dataset.colors = [.magenta, .opaqueSeparator]
        dataset.valueColors = [.cyan]
        
        uiView.data = BarChartData(dataSet: dataset)
        
        
    }
}


class barDelegate: NSObject, ChartViewDelegate {
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        print(entry)
    }
}
