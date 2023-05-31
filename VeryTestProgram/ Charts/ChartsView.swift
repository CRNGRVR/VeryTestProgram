//
//  ChartsView.swift
//  VeryTestProgram
//
//  Created by Иван on 30.05.2023.
//

import SwiftUI

struct ChartsView: View {
    var body: some View {
        ChartFromUIKit(entries: ChartsData.chDataToEntries(data: ChartsData.allData))
            .frame(width: 300, height: 150)
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
