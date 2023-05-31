//
//  PhotoDelegate.swift
//  VeryTestProgram
//
//  Created by Иван on 31.05.2023.
//

import Foundation
import AVKit

class PhotoDelegate: NSObject, AVCapturePhotoCaptureDelegate {
    
    var cameraVm: PhotoInteraction?
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        
        if let photoData = photo.fileDataRepresentation(){
            cameraVm?.setPhoto(photo: photoData)
        }
    }
}
