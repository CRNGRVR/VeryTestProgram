//
//  Relative].swift
//  VeryTestProgrammWatch Watch App
//
//  Created by Иван on 05.06.2023.
//

import Foundation
import UIKit
import WatchKit

func relative(_ draftPixels: CGFloat, _ axis: axis) -> CGFloat{
    
    //  Здесь указываются параметры макета
    let draft_width: CGFloat = 184
    let draft_height: CGFloat = 224
    
    let current_width = WKInterfaceDevice.current().screenBounds.width
    let current_heigh = WKInterfaceDevice.current().screenBounds.height
    
    //  Коэффициенты масштабирования
    let relationWidthFactor = current_width / draft_width
    let relationHeightFactor = current_heigh / draft_height
    
    switch axis {
    case .w: return draftPixels * relationWidthFactor
    case .h: return draftPixels * relationHeightFactor
    }
}

enum axis {
    case w
    case h
}
