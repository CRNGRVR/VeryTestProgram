//
//  Bank-2.swift
//  VeryTestProgrammWatch Watch App
//
//  Created by Иван on 05.06.2023.
//

import SwiftUI

struct Bank_2: View {
    var body: some View {
        VStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    Image("Logo")
                        .resizable()
                        .padding([.leading, .trailing], relative2(50, .w))
                        .aspectRatio(contentMode: .fit)
                    
                    HStack{
                        b_bt(image: "qrb", isActive: true, title: "Create QR")
                        
                        Spacer()
                        
                        b_bt(image: "arrow", isActive: false, title: "Exchange")
                        
                        Spacer()
                        
                        b_bt(image: "bell", isActive: false, title: "Notifications")
                    }
                    .padding([.leading, .trailing], relative2(20, .w))
                    .padding(.bottom, relative2(16, .h))
                    
                    
                    VStack{
                        list_elem(image: "wall", title: "Accounts")
                            .padding(.top, relative2(16, .h))
                        
                        divider()
                                                    
                        list_elem(image: "card", title: "Cards")
                        
                        divider()
                        
                        list_elem(image: "hist", title: "Account Activities")
                        
                        divider()
                        
                        list_elem(image: "qr", title: "QR Transactions")
                        
                        divider()
                        
                        list_elem(image: "settings", title: "Settings")
                            .padding(.bottom, relative2(16, .h))
                        
                    }
                    .background{
                        Color("na")
                            .cornerRadius(16)
                    }
                    .padding([.leading, .trailing], relative2(20, .w))
                    
                    
                    ZStack{
                        Color("logout")
                            .cornerRadius(12)
                        
                        Text("Logout")
                    }
                    .frame(width: .infinity, height: relative2(56, .h))
                    .padding([.leading, .trailing], relative2(20, .w))
                    .padding(.top, relative2(16, .h))
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}


struct b_bt: View {
    var image: String
    var isActive: Bool
    var title: String
    
    var body: some View{
        VStack{
            ZStack{
                Color(isActive ? "a" : "na")
                    .clipShape(Circle())
                
                VStack{
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: relative2(30, .w), height: relative2(30, .w))
                
            }
            .frame(width: relative2(72, .w), height: relative2(72, .h))
            
            Text(title)
                .font(.system(size: 10, weight: .medium))
        }
    }
}



struct list_elem: View{
    var image: String
    var title: String
    
    var body: some View{
        HStack{
            ZStack{
                Color("d")
                    .frame(width: relative2(42, .w), height: relative2(42, .h))
                    .clipShape(Circle())
                
                VStack{
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: relative2(20, .w), height: relative2(20, .h))
            }
            .padding(.leading, relative2(20, .w))
            
            
            Text(title)
                .padding(.leading, relative2(16, .w))
            
            Spacer()
        }
    }
}

struct divider: View {
    var body: some View {
        Color("divider")
            .frame(width: .infinity, height: 1)
    }
}

struct Bank_2_Previews: PreviewProvider {
    static var previews: some View {
        Bank_2()
    }
}
