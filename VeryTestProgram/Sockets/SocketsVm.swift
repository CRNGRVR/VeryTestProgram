//
//  SocketsVm.swift
//  VeryTestProgram
//
//  Created by Иван on 05.06.2023.
//

import Foundation
import Starscream

class SocketsVM: ObservableObject, WebSocketDelegate {
    var socket: WebSocket
    
    init() {
        var request = URLRequest(url: URL(string: "http://192.168.0.158:3000")!)
        
        socket = WebSocket(request: request)
        socket.delegate = self
    }
    
    
    func didReceive(event: Starscream.WebSocketEvent, client: Starscream.WebSocket) {
        
        switch event {
            case .connected(let headers):
                print("websocket is connected: \(headers)")
                break
            
            case .disconnected(let reason, let code):
                print("websocket is disconnected: \(reason) with code: \(code)")
                break
            
            case .text(let string):
                print("Received text: \(string)")
                break
            
            case .binary(let data):
                print("Received data: \(data.count)")
                break
            
            case .error(let error):
                print(error!.localizedDescription)
                break
            
            default:
                break
            }
    }
    
    
    func connect(){
        socket.connect()
    }
    
    func disconnect(){
        socket.disconnect()
    }
    
    func send(){
        socket.write(string: "zdarova!!!")
    }
}
