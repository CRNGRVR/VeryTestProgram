//
//  TestCustomFontsView.swift
//  VeryTestProgram
//
//  Created by Иван on 21.05.2023.
//

import SwiftUI

struct TestCustomFontsView: View {
    
    var body: some View {
        
        VStack{
            
            Text("Текст текст тектст")
                .font(Font.custom("Pangolin-Regular", size: 20))
        }
    }
}

struct TestCustomFontsView_Previews: PreviewProvider {
    static var previews: some View {
        TestCustomFontsView()
    }
}
