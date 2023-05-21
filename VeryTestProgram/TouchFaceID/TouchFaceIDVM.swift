//
//  TouchFaceIDVM.swift
//  VeryTestProgram
//
//  Created by Иван on 20.05.2023.
//

import Foundation
import LocalAuthentication

class TouchFaceIDVM: ObservableObject{
    
    var context = LAContext()
    
    init(){
        print("inited")
        
        context.localizedCancelTitle = "Отмена"
    }
    
    
    func auth(){

        //test
        var error: NSError?
        
        guard context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error) else {
            print(error?.localizedDescription ?? "Тут нет даже ошибки описания, жесть какая")
            return
        }
        //test


        context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "Предупреждение"){value, err in
            print(value)
            print(err?.localizedDescription)
        }

    }
    
    
}
