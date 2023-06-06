//
//  SocketsView.swift
//  VeryTestProgram
//
//  Created by Иван on 05.06.2023.
//

import SwiftUI

struct SocketsView: View {
    
    @ObservedObject var socketsVM = SocketsVM()
    
    var body: some View {
        VStack{
            Button(action: {socketsVM.connect()}, label: {
                Text("connect")
            })
            
            Button(action: {socketsVM.disconnect()}, label: {
                Text("disconnect")
            })
            
            Button(action: {socketsVM.send()}, label: {
                Text("send zdarova")
            })
        }
    }
}

//struct SocketsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SocketsView()
//    }
//}
