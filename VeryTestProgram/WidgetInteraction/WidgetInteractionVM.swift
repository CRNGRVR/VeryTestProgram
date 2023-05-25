//
//  WidgetInteractionVM.swift
//  VeryTestProgram
//
//  Created by Иван on 25.05.2023.
//

import Foundation
import WidgetKit

class WidgetInteractionVM: ObservableObject {
    
    var ud: UserDefaults?
    
    @Published var number: Int = 0
    
    init(){
        ud = UserDefaults(suiteName: "group.testGroup.523805")
        number = getNum()
    }
    
    func getNum() -> Int {
        
        guard let num = ud?.integer(forKey: "num") else { return 0 }
        return num
    }
    
    func incrementAndSave() {
        
        number += 1
        ud?.set(number, forKey: "num")
        
        WidgetCenter.shared.reloadAllTimelines()
    }
}
