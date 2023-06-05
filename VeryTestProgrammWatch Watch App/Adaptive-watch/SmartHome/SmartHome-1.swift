//
//  SmartHome-1.swift
//  VeryTestProgrammWatch Watch App
//
//  Created by Иван on 05.06.2023.
//

import SwiftUI

struct SmartHome_1: View {
    var body: some View {
        VStack{
            
            NavigationView{
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        item(image: "Lamp", title: "Active Devices", subtitle: "3 devices")
                        item(image: "Door", title: "Rooms", subtitle: "8 rooms")
                        item(image: "Lamp", title: "Active Devices", subtitle: "3 devices")
                    }
                }
                .navigationTitle{
                    HStack{
                        Text("CoShell")
                            .foregroundColor(Color("wgr"))
                            .font(Font.custom("Inter-Medium", size: 14))
                        
                        Spacer()
                    }
                }
            }
           
        }
        .preferredColorScheme(.dark)
    }
}


struct item: View {
    
    var image: String
    var title: String
    var subtitle: String
    
    var body: some View {

            VStack{
                HStack{
                    ZStack{
                        Color("wgr")
                            .clipShape(Circle())
                            .frame(width: 42, height: 42)
                        
                        Image(image)
                    }
                        .padding([.leading, .top], 8)
                    
                    Spacer()
                }
                
                HStack{
                    
                    VStack{
                        HStack{
                            Text(title)
                                .foregroundColor(.white)
                                .font(Font.custom("Inter-Medium", size: 14))
                                .padding(.leading, 8)
                            
                            Spacer()
                        }
                        .padding(.top, 8)
                        
                        HStack{
                            Text(subtitle)
                                .foregroundColor(Color("wgr"))
                                .font(Font.custom("Inter-Regular", size: 12))
                                .padding(.leading, 8)
                            
                            Spacer()
                        }
                        .padding(.top, 2)
                        .padding(.bottom, 8)
                    }
                    
                    Spacer()
                    
                    Image("wback")
                        .padding(.trailing, 16)
                }
                
            }
            .background{
                Color("wbg")
                    .cornerRadius(12)
            }
            .padding([.leading, .trailing], 8)
            .padding(.bottom, 4)
            
        
        
    }
}

struct SmartHome_1_Previews: PreviewProvider {
    static var previews: some View {
        SmartHome_1()
    }
}
