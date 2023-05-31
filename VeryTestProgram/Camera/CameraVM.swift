//
//  CameraVM.swift
//  VeryTestProgram
//
//  Created by Иван on 31.05.2023.
//

import Foundation
import AVKit

class CameraVM: ObservableObject, PhotoInteraction {
    
    @Published var session: AVCaptureSession = .init()
    
    var output = AVCapturePhotoOutput()
    var photoDelegate = PhotoDelegate()
    @Published var photoData: Data?
    
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
            session.addOutput(output)
            session.commitConfiguration()
            photoDelegate.cameraVm = self
            
            session.startRunning()
        }
        catch{}
    }
    
    
    func takePhoto() {
        
        let photoSettings = AVCapturePhotoSettings()
        output.capturePhoto(with: photoSettings, delegate: photoDelegate)
    }
    
    func setPhoto(photo: Data) {
        photoData = photo
    }
}
