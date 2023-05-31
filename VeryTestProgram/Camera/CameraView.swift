//
//  CameraView.swift
//  VeryTestProgram
//
//  Created by Иван on 31.05.2023.
//

import SwiftUI

struct CameraView: View {
    @ObservedObject var cameraVM = CameraVM()
    
    var body: some View {
        GeometryReader{g in
            ZStack {
                CameraFromUIKit(session: $cameraVM.session, size: UIScreen.main.bounds.size)
                
                Button(action: {cameraVM.takePhoto()}, label: {
                    Color.white
                        .clipShape(Circle())
                })
                .frame(width: 50, height: 50)
                
                if cameraVM.photoData != nil {
                    Image(uiImage: UIImage(data: cameraVM.photoData!)!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}
