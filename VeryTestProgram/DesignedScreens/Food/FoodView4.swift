//
//  FoodView4.swift
//  VeryTestProgram
//
//  Created by Иван on 31.05.2023.
//

import SwiftUI

struct FoodView4: View {
    var body: some View {
       
            ZStack {
                VStack {
                    Image("RectangleFood")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .ignoresSafeArea(.all)

                    Spacer()
                }
                
                
                VStack {
                    
                    Image("logo")
                        .padding(.top, relative(38, .h))
                        
                    Spacer()
                    
                    Text("Deliver Favourite Food")
                        .font(Font.custom("OpenSans-SemiBold", size: 21))
                        .foregroundColor(Color.white)

                    
                    Spacer()
                    
                    //Login card
                    ZStack{
                        Color.white
                        
                        VStack{
                            
                            Text("Login")
                                .font(Font.custom("OpenSans-Bold", size: 25))
                                .padding(.top, relative(30, .h))
                                .padding(.bottom, relative(30, .h))
                            
                            
                            VStack{
                                tf_stroke()
                                    .padding(.leading, 22)
                                    .padding(.trailing, 22)
                                    .padding(.bottom, relative(20, .h))
                            

                                tf_fill()
                                    .padding(.leading, 22)
                                    .padding(.trailing, 22)
                            }
                            .padding(.bottom, relative(10, .h))
                            

                            HStack{
                                Spacer()
                                
                                Button(action: {}, label: {
                                    Text("Forget Password?")
                                        .font(Font.custom("OpenSans-Regular", size: 12))
                                        .foregroundColor(.black)
                                })
                                .padding(.trailing, 22)
                            }
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                ZStack{
                                    Color("Food4")
                                        .cornerRadius(4)
                                    
                                    Text("Login")
                                        .font(Font.custom("OpenSans-SemiBold", size: 17))
                                        .foregroundColor(.white)
                                }
                                
                            })
                            .frame(maxWidth: .infinity, minHeight: 45, maxHeight: 45)
                            .padding(.leading, 22)
                            .padding(.trailing, 22)
                            
                            
                                Text("Or")
                                    .font(Font.custom("OpenSans-Regular", size: 12))
                                    .foregroundColor(Color("Food4"))
                                    .padding(.bottom, relative(15, .h))
                                    .padding(.top, relative(10, .h))
                                
                                HStack(spacing: 15){
                                    Image("google")
                                    Image("facebook")
                                }
                                .padding(.bottom, relative(25, .h))
                            
                            
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .cornerRadius(20)
                    .padding(.leading, 38)
                    .padding(.trailing, 38)
                    .padding(.bottom, relative(30, .h))
                    .shadow(radius: 3)
                    
                    
                    Text("Don’t have an account?")
                        .font(Font.custom("OpenSans-SemiBold", size: 14))
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("REGISTER")
                            .font(Font.custom("OpenSans-SemiBold", size: 17))
                            .foregroundColor(Color("Food4"))
                    })
                    .padding(.bottom, relative(20, .h))
                    
                }
                
            }
        
    }
}


struct tf_stroke: View {
    
    @State var txt: String = ""
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color("tf"), lineWidth: 1)
                
            HStack{
                Image("people")
                    .padding(.leading, 17)
                    .padding(.trailing, 17)
                
                ZStack(alignment: .leading){
                    TextField("example@gmail.com", text: $txt)
                        .font(Font.custom("OpenSans-Regular", size: 12))
                }
            }
        }
        .frame(maxWidth: .infinity, minHeight: 45, maxHeight: 45)
    }
}


struct tf_fill: View {
    @State var txt: String = ""
    
    var body: some View {
        ZStack {
            Color("tf")
                .cornerRadius(5)
                
            HStack{
                Image("lock")
                    .padding(.leading, 17)
                    .padding(.trailing, 17)
                
                TextField("Password", text: $txt)
                    .font(Font.custom("OpenSans-Regular", size: 12))
            }
        }
        .frame(maxWidth: .infinity, minHeight: 45, maxHeight: 45)
    }
}

struct FoodView4_Previews: PreviewProvider {
    static var previews: some View {
        FoodView4()
    }
}
