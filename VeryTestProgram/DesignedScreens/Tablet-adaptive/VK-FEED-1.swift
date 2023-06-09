//
//  VK-FEED-1.swift
//  VeryTestProgram
//
//  Created by Иван on 07.06.2023.
//

import SwiftUI

struct VK_FEED_1: View {
    var body: some View {
        ZStack {
            Color("Back")
                .ignoresSafeArea(.all)
                        
            VStack{
                top_bar()
               
                ScrollView(.vertical, showsIndicators: false) {
                    history_panel()
                        .padding(.top, 12)
                    
                    action_panel()
                        .padding(.top, 12)
                    
                    post()
                        .padding(.top, 12)
                    
                    possibleFriends()
                        .padding(.top, 12)
                }
                
                
                bottom_bar()
            }
            
            
        }
    }
}



struct top_bar: View {
    var body: some View {
        ZStack{
            Color.white
            
            VStack{
                HStack{
                    Image("header-pic")
                        .padding(.leading, 12)
                    
                    Spacer()
                    
                    Text("Главная")
                        .font(.system(size: 21, weight: .semibold))
                    
                    Spacer()
                    
                    Image("pypa")
                        .padding(.trailing, 12)
                    
                }
                .padding(.bottom, 20)
                .padding(.top, 13)
                
                HStack{
                    Group {
                        VStack(spacing: 0) {
                            HStack {
                                Text("Новости")
                                    .font(.system(size: 16, weight: .medium))
                                    .coordinateSpace(name: "nov")
                                
                                Image("b_arrow")
                            }
                            
                            Color("Blue")
                                .frame(height: 2)
                        }
                        .fixedSize(horizontal: true, vertical: false)
                        
                        Spacer()
                        
                        Text("Для вас")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color("non-active"))
                        
                        Spacer()
                        
                        Text("Актуальное")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color("non-active"))
                        
                        Spacer()
                        
                        Text("IT")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color("non-active"))
                    }
                    
                    Spacer()
                    
                    Group {
                        Text("Кино")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color("non-active"))
                        
                        Spacer()
                        
                        Text("Фокус")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color("non-active"))
                        
                        Spacer()
                        
                        Text("Фото")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color("non-active"))
                        
                        Spacer()
                        
                        Text("Спорт")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color("non-active"))
                    }
                }
                .padding([.leading, .trailing], 24)
                .padding(.bottom, 7)
                
            }
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}



struct bottom_bar: View {
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea(.all)
            
            HStack{
                
                Spacer()
                    .frame(minWidth: 64, maxWidth: 80)
                
                Group {
                    HStack(spacing: 10){
                        Image("t1v")
                        Text("Главная")
                            .foregroundColor(Color("Blue"))
                            .font(.system(size: 13, weight: .medium))
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 10){
                        Image("t2v")
                        Text("Сервисы")
                            .foregroundColor(Color("non-active"))
                            .font(.system(size: 13, weight: .medium))
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 10){
                        Image("t3v")
                        Text("Мессенджер")
                            .foregroundColor(Color("non-active"))
                            .font(.system(size: 13, weight: .medium))
                    }
                }
                
                Spacer()
                
                Group {
                    HStack(spacing: 10){
                        Image("t4v")
                        Text("Клипы")
                            .foregroundColor(Color("non-active"))
                            .font(.system(size: 13, weight: .medium))
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 10){
                        Image("t5v")
                        Text("Музыка")
                            .foregroundColor(Color("non-active"))
                            .font(.system(size: 13, weight: .medium))
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 10){
                        Image("t6v")
                        Text("Уведомления")
                            .foregroundColor(Color("non-active"))
                            .font(.system(size: 13, weight: .medium))
                    }
                    
                    Spacer()
                        .frame(minWidth: 64, maxWidth: 80)
                }
                
            }
            //.padding([.leading, .trailing], 80)
            .padding([.top, .bottom], 13)
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}


struct history_panel: View {
    var body: some View {
        HStack{
            
            Spacer()
                .frame(minWidth: 64)

            ZStack {
                Color.white
                    .cornerRadius(10)
                
                HStack(spacing: 21){
                    history(image: "s1", name: "Ольга", isActive: true)
                    history(image: "s2", name: "Антон", isActive: true)
                    history(image: "s3", name: "Нина", isActive: false)
                    history(image: "s4", name: "Евгений", isActive: false)
                    
                    Spacer()
                }
                    .padding(.leading, 11)
                    .padding(.top, 13)
                    .padding(.bottom, 12)
            }
            .frame(maxWidth: 800)
            .layoutPriority(1)
            
            
            Spacer()
                .frame(minWidth: 64)
        }
        
    }
}

struct history: View {
    var image: String
    var name: String
    var isActive: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                if isActive {
                    Color("Blue")
                        .clipShape(Circle())
                        .frame(width: 64, height: 64)
                    
                    Color.white
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                }
                
                Image(image)
            }
            .padding(.bottom, isActive ? 3 : 6)
            
            Text(name)
                .foregroundColor(Color(isActive ? "Blue" : "non-active"))
                .font(.system(size: 12, weight: .medium))
        }
    }
}


struct action_panel: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(minWidth: 64)
            
            ZStack {
                Color.white
                    .cornerRadius(10)
                
                HStack {
                    ZStack {
                        Color("Back")
                            .cornerRadius(10)
                        
                        HStack {
                            Spacer()
                            
                            Image("zapis")
                            Text("Создать запись")
                                .foregroundColor(Color("Blue"))
                                .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
                            
                        }
                        .padding([.top, .bottom], 9)
                    }
                    //.frame(width: .infinity)
                    .padding(.leading, 12)
                    .padding(.trailing, 21)
                    .padding([.top, .bottom], 10)
                    //.fixedSize(horizontal: true, vertical: true)
                    
                    
                    HStack(spacing: 13) {
                        Image("pic")
                        Image("clip")
                        Image("live")
                    }
                    .padding(.trailing, 14)
                }
            }
            .frame(maxWidth: 800)
            .layoutPriority(1)
            
            Spacer()
                .frame(minWidth: 64)
        }
    }
}



struct post: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(minWidth: 64)
            
            ZStack {
                Color.white
                    .cornerRadius(10)
                
                VStack {
                    //  Header
                    HStack(spacing: 0) {
                        Image("Avatar")
                            .padding(.leading, 12)
                            .padding(.trailing, 8)
                        
                        VStack(alignment: .leading) {
                            Text("Павел Князев")
                                .font(.system(size: 14, weight: .medium))
                            
                            Text("час назад")
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color("non-active"))
                        }
                        
                        Spacer()
                        
                        Image("dotdotdot")
                            .padding(.trailing, 14)
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 6)
                    
                    //  Body
                    Text("Поехали покорять побережье и маленькие города поблизости. Северное море холодное, но красивое. Песок практически белый, усыпан тысячами медуз, выброшенных волнами на берег.\n\nСамый впечатляющий день поездки.")
                        .font(.system(size: 15, weight: .regular))
                        .frame(width: .infinity)
                        .padding([.leading, .trailing], 12)
                    
                    ad()
                    
                    //  Footer
                    HStack {
                        HStack(spacing: 6) {
                            Image("like")
                            Text("65")
                                .foregroundColor(Color("non-active"))
                                .font(.system(size: 14, weight: .medium))
                        }
                        
                        HStack(spacing: 6) {
                            Image("comment")
                            Text("65")
                                .foregroundColor(Color("non-active"))
                                .font(.system(size: 14, weight: .medium))
                        }
                        
                        HStack(spacing: 6) {
                            Image("share")
                            Text("4")
                                .foregroundColor(Color("non-active"))
                                .font(.system(size: 14, weight: .medium))
                        }
                        
                        Spacer()
                        
                        HStack(spacing: 6) {
                            Image("glaz")
                            Text("7.2K")
                                .foregroundColor(Color("non-active"))
                                .font(.system(size: 14, weight: .regular))
                        }
                    }
                    .padding(.leading, 14)
                    .padding(.trailing, 16)
                    .padding(.bottom, 12)
                    .padding(.top, 14)  //  Или 26, я не знаю
                }
            }
            .frame(maxWidth: 800)
            .layoutPriority(1)
            
            Spacer()
                .frame(minWidth: 64)
        }
    }
}


struct ad: View {
    var body: some View {
        ZStack {
            Color.white
            
            HStack {
                Image("game")
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 2) {
                    HStack {
                        Text("Официальный сайт He…")
                            .font(.system(size: 15, weight: .semibold))
                        Spacer()
                        Image("star")
                    }
                    
                    Text("A story of beauty\nand illusion")
                        .font(.system(size: 14, weight: .regular))
                    
                    Text("playhearthstone.com")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(Color("non-active"))
                }
                .padding([.leading, .trailing], 12)
            }
        }
        .cornerRadius(10)
        .shadow(radius: 1)
        .frame(maxWidth: 600)
    }
}


struct possibleFriends: View {
    var body: some View {
        HStack {
            
            Spacer()
                .frame(minWidth: 64)
            
            ZStack {
                Color.white
                    .cornerRadius(10)
                
                VStack {
                    HStack {
                        Text("Возможные друзья")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(Color("non-active"))
                        
                        Spacer()
                        
                        Text("Показать все")
                            .font(.system(size: 15, weight: .regular))
                            .foregroundColor(Color("Blue"))
                    }
                    .padding([.leading, .trailing], 12)
                    .padding([.top, .bottom], 10)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            friendCard(image: "Avatar 1", name: "Андрей Новожил…", subtitle: "Команда ВКонтакте")
                            friendCard(image: "Avatar-1", name: "Михаил Лихачёв", subtitle: "Команда ВКонтакте")
                            friendCard(image: "Avatar-2", name: "Александр Афан…", subtitle: "Команда ВКонтакте")
                            friendCard(image: "Avatar-3", name: "Елизавета Корчаг…", subtitle: "Команда ВКонтакте")
                        }
                        .padding(.leading, 12)
                    }
                    .padding(.bottom, 16)                }
            }
            .frame(maxWidth: 800)
            .layoutPriority(1)
            
            Spacer()
                .frame(minWidth: 64)
            
        }
    }
}


struct friendCard: View {
    var image: String
    var name: String
    var subtitle: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("non-active"), lineWidth: 0.5)
            
            VStack(spacing: 0) {
                //  Картинка и крестик
                ZStack {
                    Image(image)
                    
                    VStack {
                        HStack {
                            Spacer()
                            Image("close")
                                .padding(.trailing, 8)
                        }
                        .padding(.top, 8)
                        
                        Spacer()
                    }
                }
                .fixedSize()
                
                Spacer()
                
                Text(name)
                    .font(.system(size: 13, weight: .semibold))
                    .padding(.bottom, 2)
                
                Text(subtitle)
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color("non-active"))
                    .padding(.bottom, 10)
                
                
                ZStack {
                    Color("Blue")
                        .cornerRadius(10)
                    
                    HStack {
                        Image("plus")
                        
                        Text("добавить")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.white)
                    }
                    .padding(.leading, 12)
                }
                .frame(width: 120, height: 30)
                .padding(.bottom, 12)
            }
        }
        .frame(width: 144, height: 238)
        .cornerRadius(8)
    }
}


struct VK_FEED_1_Previews: PreviewProvider {
    static var previews: some View {
        VK_FEED_1()
    }
}
