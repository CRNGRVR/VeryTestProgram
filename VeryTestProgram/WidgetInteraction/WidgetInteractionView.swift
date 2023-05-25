//
//  WidgetInteractionView.swift
//  VeryTestProgram
//
//  Created by Иван on 25.05.2023.
//

import SwiftUI

struct WidgetInteractionView: View {
    
    @ObservedObject var widgetInteractionVM = WidgetInteractionVM()
    
    var body: some View {
        Button(action: {
            widgetInteractionVM.incrementAndSave()
        }, label: {
            Text(String(widgetInteractionVM.number))
        })
    }
}
