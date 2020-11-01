//
//  Captain.swift
//  00857202_3
//
//  Created by User02 on 2020/10/25.
//

import SwiftUI
struct Author {
    let name: String
    let books: [String]
}
struct Captain: View {
    @State private var brightnessAmount:Double = 0
    @State private var scale : CGFloat = 1
    @State private var blurness : CGFloat = 0
    @State private var isC=true
    let authors_thor = [
            Author(name: "Intro", books: ["Starring:Chris Evans", "Production company:Marvel Studios"]),
            Author(name: "Chris Evans", books: ["WEAKNESS:BAD LANGUAGE,DOGS", "ABILITIES:TEAM LEADERSHIP,SUPER STRENGTH"])
        ]
        
        var body: some View {
            NavigationView{
                
                VStack{
//
                    Image(isC ? "captain-america" : "Chris Evans")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height:250)
                        .clipped()
                        .brightness(brightnessAmount)
                        .scaleEffect(scale)
                        .blur(radius: blurness)
                    Text(isC ? "Captain America" : "Chris Evans")
                    Toggle("", isOn: $isC)
                        
                        

                    
                        Form {
                            HStack {
                                Text("亮度")
                                Slider(value: $brightnessAmount, in: 0...1,
                                minimumValueLabel: Image(systemName: "sun.max.fill").imageScale(.small),
                                maximumValueLabel: Image(systemName: "sun.max.fill").imageScale(.large)) {
                                Text("")
                                }
                                .accentColor(.yellow)
                            }
                            HStack{
                                Text("大小")
                                Slider(value: $scale,in: 0...1,minimumValueLabel:Image(systemName: "magnifyingglass").imageScale(.small),maximumValueLabel:Image(systemName: "magnifyingglass").imageScale(.large)
                                    ){
                                    Text("")
                                }
                                .accentColor(.yellow)
                                }
                            HStack{
                                   Text("模糊")
                                   Slider(value:$blurness,in : 0...10,minimumValueLabel:Image(systemName: "drop").imageScale(.small),maximumValueLabel:Image(systemName: "drop").imageScale(.large)){
                                       Text("")
                                   }
                                   .accentColor(.yellow)
                               }
                        }
                    DisclosureGroup(
                        content: {
                            VStack(alignment: .leading) {
                                ForEach(authors_thor, id: \.name) { (author) in
                                    DisclosureGroup(author.name) {
                                        
                                        VStack(alignment: .leading) {
                                            ForEach(author.books, id: \.self) { (book)  in
                                                Text(book)
                                            }
                                        }
                                    }
                                }
                            }
                            .padding()
                        },
                        label: {
                            Label("Captain America", systemImage: "heart.fill")
                        }
                    )
                    .padding()
                    }
               
                }
            }
        }


struct Captain_Previews: PreviewProvider {
    static var previews: some View {
        Captain()
    }
}
