//
//  SmartHome-4.swift
//  VeryTestProgrammWatch Watch App
//
//  Created by Иван on 05.06.2023.
//

import SwiftUI

struct SmartHome_4: View {
    
    var columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var itemsw = [
        itemw(id: UUID(), Image: "tv", title: "Smart TV", active: false),
        itemw(id: UUID(), Image: "veter", title: "Air Condition", active: true),
        itemw(id: UUID(), Image: "veter2", title: "Air Purifier", active: false),
        itemw(id: UUID(), Image: "Lamp", title: "Light 1", active: true),
        itemw(id: UUID(), Image: "veter1", title: "Fan", active: true),
        itemw(id: UUID(), Image: "wlamp", title: "Light 2", active: false),
        itemw(id: UUID(), Image: "Lamp", title: "Light 3", active: false),
        itemw(id: UUID(), Image: "Lamp", title: "Light 4", active: false),
        itemw(id: UUID(), Image: "Lamp", title: "Light 5", active: false),
    ]
    
    var body: some View {
        VStack{
            ScrollView(.vertical, showsIndicators: false){
                
                VStack{
                    Text("Living Room")
                        .font(Font.custom("Inter-Medium", size: 16))
                        .padding(.bottom, 2)
                    
                    Text("9 devices")
                        .font(Font.custom("Inter-Regular", size: 12))
                        .foregroundColor(Color("wgr"))
                        .padding(.bottom, 12)
                    
                    LazyVGrid(columns: columns){
                        
                        ForEach(itemsw){itemData1 in
                            btn(image: itemData1.Image, isActive: itemData1.active, title: itemData1.title)
                        }
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct btn: View {
    var image: String
    var isActive: Bool
    var title: String
    
    var body: some View {
        VStack {
            ZStack {
                Color(isActive ? "wgr" : "wbg")
                    .clipShape(Circle())
                    .frame(width: 42, height: 42)
                
                Image(image)
            }
            
            Text(title)
                .font(Font.custom("Inter-Medium", size: 8))
                .foregroundColor(isActive ? .white : .gray)
                .padding(.top, 4)
        }
        .padding(.bottom, 12)
    }
}


struct itemw: Identifiable {
    let id: UUID
    let Image: String
    let title: String
    let active: Bool
}

struct SmartHome_4_Previews: PreviewProvider {
    static var previews: some View {
        SmartHome_4()
    }
}
