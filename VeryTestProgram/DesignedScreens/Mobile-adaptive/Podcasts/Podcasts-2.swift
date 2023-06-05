//
//  Podcasts.swift
//  VeryTestProgram
//
//  Created by Иван on 02.06.2023.
//

import SwiftUI

struct Podcasts: View {
    
    let columns = [GridItem(.fixed(180)), GridItem(.fixed(180))]
                                                                 
    let albumData = [
        albumsData(id: UUID(), img: "al2", title: "The missing 96 percent of the universe", author: "Claire Malone"),
        albumsData(id: UUID(), img: "al1", title: "How Dolly Parton led me to an epiphany", author: "Abumenyang"),
        albumsData(id: UUID(), img: "al4", title: "The missing 96 percent of the universe", author: "Tir McDohl"),
        albumsData(id: UUID(), img: "al3", title: "Ngobam with Denny Caknan", author: "Denny Kulon")
    ]
    
    var body: some View {
        
        ZStack{
            Color("backgr")
                .ignoresSafeArea(.all)
            
            VStack{
                HStack{
                    Button(action: {}, label: {
                        Image("menu")
                    })
                    
                    Spacer()
                    
                    Text("Podkes")
                        .foregroundColor(.white)
                        .font(Font.custom("Poppins-Bold", size: 18))
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image("Notification")
                    })
                }
                .padding([.leading, .trailing], 30)
                .padding(.bottom, relative(35, .h))
                .padding(.top, relative(47, .h))
                
                
                tf()
                    .padding(.bottom, relative(16, .h))
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 12){
                        
                        Button(action: {}, label: {
                            ZStack{
                                Color("buttons")
                                    .cornerRadius(36)
                                
                                Text("All")
                                    .foregroundColor(Color("activeB"))
                                    .font(Font.custom("Inter-SemiBold", size: 13))
                            }
                        })
                        .frame(width: 59, height: 36)
                        .padding(.leading, 24)
                        
                        Button(action: {}, label: {
                            ZStack{
                                Color("buttons")
                                    .cornerRadius(36)
                                
                                Text("Life")
                                    .foregroundColor(Color("nonactiveB"))
                                    .font(Font.custom("Inter-SemiBold", size: 13))
                            }
                        })
                        .frame(width: 85, height: 36)
                        
                        Button(action: {}, label: {
                            ZStack{
                                Color("buttons")
                                    .cornerRadius(36)
                                
                                Text("Comedy")
                                    .foregroundColor(Color("nonactiveB"))
                                    .font(Font.custom("Inter-SemiBold", size: 13))
                            }
                        })
                        .frame(width: 103, height: 36)
                        
                        Button(action: {}, label: {
                            ZStack{
                                Color("buttons")
                                    .cornerRadius(36)
                                
                                Text("Tech")
                                    .foregroundColor(Color("nonactiveB"))
                                    .font(Font.custom("Inter-SemiBold", size: 13))
                            }
                        })
                        .frame(width: 103, height: 36)
                        
                    }
                }
                .frame(height: 36)
                .padding(.bottom, relative(16, .h))
                
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    VStack{
                        HStack{
                            Text("Trending")
                                .foregroundColor(.white)
                                .font(Font.custom("Inter-Bold", size: 24))
                            
                            Spacer()
                        }
                        .padding(.leading, 24)
                        

                        LazyVGrid(columns: columns, content: {
                            ForEach(albumData){album in
                                albumView(image: album.img, title: album.title, author: album.author)
                                    .padding(.bottom, 12)
                            }
                        })
                        .padding([.leading, .trailing], 20)
                    }
                }
            }
            
            VStack{
                Spacer()
                tabbar()
            }
        }
        .ignoresSafeArea(.all)
    }
}



struct tf: View{
    @State var txt = ""
    
    var body: some View{
        ZStack{
            Color("else")
                .cornerRadius(15)
            
            HStack{
                TextField("Search", text: $txt)
                    .foregroundColor(Color("subtitle"))
                    .font(Font.custom("Inter-Regular", size: 13))
                
                Spacer()
                
                Image("Search")
            }
            .padding([.leading, .trailing], 20)
        }
        .frame(width: .infinity, height: 53)
        .padding([.leading, .trailing], 24)
    }
}



struct albumView: View{
    var image: String
    var title: String
    var author: String
    
    var body: some View{
        
        VStack(spacing: 0){
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(.bottom, relative(10, .h))
            
            HStack{
                Text(title)
                    .foregroundColor(.white)
                    .font(Font.custom("Inter-Bold", size: 13))
                    .frame(maxHeight: 40)
                
                Spacer()
            }
            .padding(.bottom, relative(4, .h))
            
            HStack{
                Text(author)
                    .foregroundColor(Color("subtitle"))
                    .font(Font.custom("Inter-Medium", size: 10))
                
                Spacer()
            }
        }
        .frame(width: relative(160, .w))
    }
}


struct albumsData: Identifiable{
    var id: UUID
    var img: String
    var title: String
    var author: String
}


struct tabbar: View{
    
    var body: some View{
        
        ZStack{
            Color("else")
            
            HStack{
                
                Button(action: {}, label: {
                    VStack{
                        Image("t1")
                        Text("Discover")
                            .foregroundColor(.white)
                            .font(Font.custom("Inter-Medium", size: 10))
                    }
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    VStack{
                        Image("t2")
                        Text("Library")
                            .foregroundColor(Color("nonactive"))
                            .font(Font.custom("Inter-Medium", size: 10))
                    }
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    VStack{
                        Image("t3")
                        Text("Profile")
                            .foregroundColor(Color("nonactive"))
                            .font(Font.custom("Inter-Medium", size: 10))
                    }
                })
                
            }
            .padding([.leading, .trailing], 50)
        }
        .frame(width: .infinity, height: relative(85, .h))
    }
}




struct Podcasts_Previews: PreviewProvider {
    static var previews: some View {
        Podcasts()
    }
}
