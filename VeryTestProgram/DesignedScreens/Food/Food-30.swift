//
//  Food-30.swift
//  VeryTestProgram
//
//  Created by Иван on 01.06.2023.
//

import SwiftUI

struct Food_30: View {
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Button(action: {}, label: {
                        Image("back")
                    })
                    .padding(.leading, 20)

                    Spacer()
                }
                .padding(.bottom, relative(20, .h))
                
                HStack{
                    Text("Order detail")
                        .font(Font.custom("OpenSans-Bold", size: 25))
                        .padding(.leading, 20)
                    
                    Spacer()
                }
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 20){
                        element(image: "p3", title: "Chicken Veggi Salad", description: "With cheese sauce", price: "52.00")
                        
                        element(image: "p1", title: "Nutton curry", description: "With basmati rice", price: "23.00")
                        
                        element(image: "p2", title: "French Fry", description: "With beef bacon", price: "21.00")
                    }
                }
                
            }
            
            VStack{
                
                Spacer()
                
                ZStack{
                    Color("Food30")
                        .cornerRadius(40)
                    
                    VStack{
                        
                        HStack{
                            Text("Subtotal")
                                .font(Font.custom("OpenSans-Regular", size: 12))
                                .padding(.leading, 30)
                            
                            Spacer()
                            
                            Text("$96.00")
                                .font(Font.custom("OpenSans-Regular", size: 12))
                                .padding(.trailing, 30)
                        }
                        .padding(.top, relative(25, .h))
                        .padding(.bottom, relative(20, .h))
                        
                        
                        HStack{
                            Text("Delivery")
                                .font(Font.custom("OpenSans-Regular", size: 12))
                                .padding(.leading, 30)
                            
                            Spacer()
                            
                            Text("$2.00")
                                .font(Font.custom("OpenSans-Regular", size: 12))
                                .padding(.trailing, 30)
                        }
                        .padding(.bottom, relative(20, .h))
                        
                        HStack{
                            
                            Text("Total")
                                .font(Font.custom("OpenSans-SemiBold", size: 17))
                                .padding(.leading, 30)
                            
                            Spacer()
                            
                            Text("$98.00")
                                .font(Font.custom("OpenSans-SemiBold", size: 17))
                                .padding(.trailing, 30)
                        }
                        .padding(.bottom, relative(25, .h))
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            ZStack{
                                Color("Food4")
                                    .cornerRadius(4)
                                
                                Text("Checkout")
                                    .foregroundColor(.white)
                                    .font(Font.custom("OpenSans-SemiBold", size: 17))
                            }
                        })
                        .frame(maxWidth: .infinity, minHeight: 56, maxHeight: 56)
                        .padding([.leading, .trailing], 30)
                        .padding(.bottom, 50)
                        
                        
                    }
                    
                    
                }
                .frame(width: .infinity, height: relative(231, .h))
            
            }
            
            .ignoresSafeArea(.all)
            
            
        }
    }
}


struct element: View {
    
    var image: String
    var title: String
    var description: String
    var price: String

    var body: some View {
        
        HStack {
            
            Image(image)
                .frame(width: 120, height: 120)
                .padding(.trailing, 20)
            
            Spacer()
            
            VStack(alignment: .leading){
                Price(price: price)
                
                Text(title)
                    .font(Font.custom("OpenSans-SemiBold", size: 17))
                
                Text(description)
                    .font(Font.custom("OpenSans-Regular", size: 12))
                    .foregroundColor(Color.gray)
                
                
                HStack{
                    
                    //  Group of buttons
                    ZStack{
                        Color.white
                            .frame(width: 90, height: 30)

                        HStack{
                            Button(action: {}, label: {
                                Text("-")
                                    .foregroundColor(.gray)
                                    .font(Font.custom("OpenSans-SemiBold", size: 14))
                            })
                            
                            ZStack{
                                Color("tf")
                                
                                Text("1")
                                    .font(Font.custom("OpenSans-SemiBold", size: 14))
                            }
                            .frame(width: 30, height: 30)
                            
                            Button(action: {}, label: {
                                Text("+")
                                    .foregroundColor(.gray)
                                    .font(Font.custom("OpenSans-SemiBold", size: 14))
                            })
                        }
                    }
                    .frame(width: 90, height: 30)
                    .cornerRadius(4)
                    .shadow(radius: 5)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        ZStack{
                            Color.white
                                .frame(width: 30, height: 30)
                                .cornerRadius(4)
                                .shadow(radius: 2)
        
                            Image("trash")
                        }
                    })
                }

                
                
            }
        }
        .frame(maxWidth: .infinity, minHeight: 120, maxHeight: 120)
        .padding([.leading, .trailing], 20)
    }
}



struct Price: View {
    var price: String
    
    var body: some View {
        HStack(spacing:0){
            
            Text("$")
                .foregroundColor(Color("Food4"))
                .font(Font.custom("OpenSans-Regular", size: 12))
                .padding(.top, 4)
            
            Text(price)
                .foregroundColor(Color("Food4"))
                .font(Font.custom("OpenSans-SemiBold", size: 17))
        }
    }
}

struct Food_30_Previews: PreviewProvider {
    static var previews: some View {
        Food_30()
    }
}
