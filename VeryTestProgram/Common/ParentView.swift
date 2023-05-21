//
//  ContentView.swift
//  VeryTestProgram
//
//  Created by Иван on 20.05.2023.
//

import SwiftUI

struct ParentView: View {
    
    @ObservedObject var navVM = NavVM()
    
    var body: some View {
//        VStack{
//
//            switch navVM.nav{
//
//            case "auth": TouchFaceIDView()
//
//            default: TouchFaceIDView()
//            }
//        }
        
        TestCustomFontsView()
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
