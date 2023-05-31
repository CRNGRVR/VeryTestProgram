//
//  CameraVM.swift
//  VeryTestProgram
//
//  Created by Иван on 31.05.2023.
//

import Foundation
import AVKit

class CameraVM: ObservableObject {
    
    @Published var session: AVCaptureSession = .init()
    
    init() {
        
        permissionRequestIfNotAuthorized()
        setUp()
    }
    
    func permissionRequestIfNotAuthorized() {
        
        if AVCaptureDevice.authorizationStatus(for: .video) == .authorized {
            return
        }
        else {
            AVCaptureDevice.requestAccess(for: .video, completionHandler: {_ in})
        }
    }
    
    func setUp() {
        
        //  Всё что доступно для соответствкющей IOS
        let device = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInDualCamera, .builtInDualWideCamera, .builtInTelephotoCamera, .builtInTripleCamera, .builtInTrueDepthCamera, .builtInUltraWideCamera, .builtInWideAngleCamera], mediaType: .video, position: .back).devices[0]
        
        do{
            let input = try AVCaptureDeviceInput(device: device)
            
            session.beginConfiguration()
            session.addInput(input)
            session.commitConfiguration()
            
            session.startRunning()
        }
        catch{
            print("Хана")
        }
    }
    
    
    func takePhoto() {
        
        var photoSettings = AVCapturePhotoSettings()
        
    }
}
