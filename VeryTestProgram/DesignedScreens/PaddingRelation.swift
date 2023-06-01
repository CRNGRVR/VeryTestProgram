//
//  PaddingRelation.swift
//  VeryTestProgram
//
//  Created by Иван on 01.06.2023.
//

import Foundation
import UIKit

func relative(_ draftPixels: CGFloat, _ axis: axis) -> CGFloat{
    
    //  Здесь указываются параметры макета
    let draft_width: CGFloat = 375
    let draft_height: CGFloat = 812
    
    let current_width = UIScreen.main.bounds.width
    let current_heigh = UIScreen.main.bounds.height
    
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
