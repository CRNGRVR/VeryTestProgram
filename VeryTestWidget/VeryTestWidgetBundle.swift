//
//  VeryTestWidgetBundle.swift
//  VeryTestWidget
//
//  Created by Иван on 23.05.2023.
//

import WidgetKit
import SwiftUI

@main
struct VeryTestWidgetBundle: WidgetBundle {
    @WidgetBundleBuilder
    var body: some Widget {
        VeryTestWidget()
        MostVeryTestWidget()
        ServerWidget()
    }
}
