//
//  VeryTestProgramTests.swift
//  VeryTestProgramTests
//
//  Created by Иван on 30.05.2023.
//
//  Тесты шляпа
//  Просто для примера
//

import XCTest
@testable import VeryTestProgram

final class VeryTestProgramTests: XCTestCase {

    var widgetInteractionVM = WidgetInteractionVM()
    
    func testGreenIncrement(){
        let current = Int((widgetInteractionVM.ud?.string(forKey: "num")!)!)
        widgetInteractionVM.incrementAndSave()
        
        let isInctementedOne = Int((widgetInteractionVM.ud?.string(forKey: "num"))!)! == current! + 1
        XCTAssert(isInctementedOne)
    }
    
    func testRedIncrement(){
        let current = Int((widgetInteractionVM.ud?.string(forKey: "num"))!)!
        widgetInteractionVM.incrementAndSave()
        
        //  Заведомо неверные условия
        let isInctementedOne: Bool = Int((widgetInteractionVM.ud?.string(forKey: "num"))!)! == current + 5
        XCTAssert(isInctementedOne)
    }
    
    func testIncrementSpeed(){
        self.measure(metrics: [XCTCPUMetric()]){
            widgetInteractionVM.getNum()
            widgetInteractionVM.incrementAndSave()
        }
    }
}
