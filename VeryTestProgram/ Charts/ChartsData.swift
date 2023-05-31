//
//  ChartsData.swift
//  VeryTestProgram
//
//  Created by Иван on 30.05.2023.
//

import Foundation
import Charts

struct ChartsData {
    
    var year: Int
    var value: Int
    
    static let allData = [
        
        ChartsData(year: 2003, value: 10),
        ChartsData(year: 2004, value: 14),
        ChartsData(year: 2005, value: 22),
        ChartsData(year: 2006, value: 30),
        ChartsData(year: 2007, value: 33),
        ChartsData(year: 2008, value: 28),
        ChartsData(year: 2009, value: 24),
        ChartsData(year: 2010, value: 20),
        ChartsData(year: 2011, value: 50),
        ChartsData(year: 2012, value: 55)
    ]
    
    static func chDataToEntries(data: [ChartsData]) -> [BarChartDataEntry]{
        return data.map{
            BarChartDataEntry(x: Double($0.year), y: Double($0.value))
        }
    }
}
