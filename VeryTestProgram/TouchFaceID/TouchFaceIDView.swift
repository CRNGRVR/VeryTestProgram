//
//  TouchFaceIDView.swift
//  VeryTestProgram
//
//  Created by Иван on 20.05.2023.
//

import SwiftUI
import LocalAuthentication

struct TouchFaceIDView: View {
    
    @ObservedObject var touchFaceIDVM = TouchFaceIDVM()
    
    var body: some View {
        Button(action: {
            touchFaceIDVM.auth()
        }, label: {
            Text("Биометрическая авторизация")
        })
    }
}

//struct TouchFaceIDView_Previews: PreviewProvider {
//    static var previews: some View {
//        TouchFaceIDView()
//    }
//}
