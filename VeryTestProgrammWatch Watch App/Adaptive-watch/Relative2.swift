//
//  Relative2.swift
//  VeryTestProgrammWatch Watch App
//
//  Created by Иван on 05.06.2023.
//


//  Здесь не должно было быть второго файла, но макетов много
//
//  Можно было бы сделать по уму, например настройка под каждый view,
//  или передача размера макета в качетве аргумента, но я тороплюсь немножко :)

import Foundation
import UIKit
import WatchKit

func relative2(_ draftPixels: CGFloat, _ axis: axis) -> CGFloat{
    
    //  Здесь указываются параметры макета
    let draft_width: CGFloat = 360
    let draft_height: CGFloat = 360
    
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
