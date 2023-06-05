//
//  Sport-16.swift
//  VeryTestProgram
//
//  Created by Иван on 02.06.2023.
//

import SwiftUI

struct Sport_16: View {
    var body: some View {
        
        ZStack {
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    
                    //  Блок с картинкой и заголовком
                    ZStack{
                        Image("main")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                        
                        VStack{
                            
                            Spacer()
                            
                            VStack(spacing: 8){
                                HStack{
                                    ZStack{
                                        Color.white
                                            .opacity(0.08)
                                            .blur(radius: 4)
                                            .frame(width: 66, height: 18)
                                        
                                        Text("🔥Top news")
                                            .font(.system(size: 10))
                                            .foregroundColor(.white)
                                    }
                                    .padding(.leading, 16)
                                    
                                    Spacer()
                                }
                                
                                HStack{
                                    Text("Phoenix Suns vs Boston Celtics")
                                        .font(Font.custom("BebasNeue-Regular", size: 38))
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                                        .padding(.leading, 16)
                                        .padding(.bottom, 16)
                                    
                                    Spacer()
                                }
                            }
                        }
                        
                    }
                    .frame(width: 390, height: 360)
                    .ignoresSafeArea(.all)
                    
                    //  Три слова
                    HStack{
                        Text("Basketball")
                            .foregroundColor(Color("r1"))
                            .font(.system(size: 12))
                        
                        Image(".")
                        
                        Text("Wed 12/16 ")
                            .foregroundColor(Color("g1"))
                            .font(.system(size: 12))
                        
                        Text("8:30 PM")
                            .font(.system(size: 12))
                            .foregroundColor(Color("g1"))
                        
                        Spacer()
                    }
                    .padding(.leading, 16)
                    .padding(.top, 8)
                    
                    Text("We explored the tough decisions regarding the selection of Western Conference backcourt players looming later this month once the league officially opens voting for the 2023 NBA All-Star Game.\n\nSo, naturally, it’s time to turn attention to the Eastern Conference, which added a couple of 2022 All-Star guards from the West in Donovan Mitchell and Dejounte Murray to an already deep pool that features a total of 17 All-Star nods between two players — James Harden and Kyrie Irving — that aren’t even locks to make this year’s squad.")
                        .foregroundColor(Color("g2"))
                        .font(.system(size: 14))
                        .padding(.leading, 16)
                        .padding(.trailing, 16)
                    
                    HStack(spacing: 4){
                        Image("1pic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                        Image("2pic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                    .padding([.leading, .trailing, .top], 16)
                    
                    
                }
                
                Spacer()
            }
            .ignoresSafeArea(.all)
            
            
            //  Верхняя панель
            VStack{
                HStack {
                    Button(action: {}, label: {
                        Image("back2")
                    })
                    .padding(.leading, 24)
                    
                    Text("Back")
                        .foregroundColor(Color.white)
                        .font(.system(size: 16))
                        .padding(.trailing, 2)
                    
                    Spacer()
                    
                    Image("triple-dot")
                        .padding(.trailing, 16)
                }
                
                Spacer()
            }
            
            
            //  Таббар
            VStack{
                
                Spacer()
                
                ZStack{
                    HStack(spacing: 0){
                        Image("l")
                        Color.white
                            .frame(width: .infinity, height: 48)
                        Image("r")
                    }
                    
                    HStack{
                        Button(action: {}, label: {
                            Image("first")
                        })
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image("second")
                        })
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image("third")
                        })
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image("four")
                        })
                    }
                    .padding([.leading, .trailing], 35)
                }
            }
            .padding([.leading, .trailing], 16)
            .padding(.bottom, relative(24, .h))
            .ignoresSafeArea(.all)
        }
        
    }
}


struct Sport_16_Previews: PreviewProvider {
    static var previews: some View {
        Sport_16()
    }
}
