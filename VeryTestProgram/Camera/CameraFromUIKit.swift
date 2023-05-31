//
//  CameraFromUIKit.swift
//  VeryTestProgram
//
//  Created by Иван on 31.05.2023.
//

import Foundation
import SwiftUI
import AVKit

struct CameraFromUIKit: UIViewRepresentable {
    
    @Binding var session: AVCaptureSession
    var size: CGSize
    
    func makeUIView(context: Context) -> UIView {
        
        let cameraLayer = AVCaptureVideoPreviewLayer(session: session)
        cameraLayer.frame = CGRect(origin: .zero, size: size)
        cameraLayer.videoGravity = .resizeAspectFill
        
        let view = UIView(frame: CGRect(origin: .zero, size: size))
        view.layer.addSublayer(cameraLayer)
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
