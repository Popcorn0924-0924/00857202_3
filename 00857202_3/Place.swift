//
//  Place.swift
//  00857202_3
//
//  Created by User03 on 2020/11/1.
//

import SwiftUI

struct Place: View {
    var body: some View {
        VStack{
            Image("back2")
                .resizable()
                .frame(width: 400, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            NavigationView{
                
                    List{
                        Section(header:Label2(Sphenisciformes:"跟著復仇者聯盟去旅行！",red:228,green:212,blue:212)){
                            ForEach(0..<Aptenodytes.count){(item) in
                                NavigationLink(destination: CharacterDetail(Char:Aptenodytes[item], place: MarvelPlace[item])) {
                                    CharacterPlace(Char:Aptenodytes[item])
                        
                                           
                                      }
                                }
                            
                }.navigationTitle("Marvel拍攝地點")
                .accentColor(.blue)
            }.frame(width: 420, height:690, alignment: .top)
                
        }
        }
        
}

struct Place_Previews: PreviewProvider {
    static var previews: some View {
        Place()
    }
}
struct Label2:View {
            let Sphenisciformes:String
                let red:Double
                let green:Double
                let blue:Double
                var body: some View {
                    ZStack {
                        Color(red: red/255, green: green/255, blue: blue/255).edgesIgnoringSafeArea(.all)
                        HStack {
                            Text(Sphenisciformes)
                                .font(.system(size: 15))
                                .bold()
                                .foregroundColor(Color.black)
                            Spacer()
                        }
                        .frame(width: 200)
                        Spacer()
                    }.frame(width:450, height: 30)
                }
        }
    }
