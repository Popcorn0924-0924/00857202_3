//
//  Captain.swift
//  00857202_3
//
//  Created by User02 on 2020/10/25.
//

import SwiftUI
struct Author_iron {
    let name: String
    let books: [String]
}
struct Iron: View {
    @State private var brightnessAmount:Double = 0
    @State private var scale : CGFloat = 1
    @State private var blurness : CGFloat = 0
    @State private var isC=true
    let authors_iron = [
            Author_iron(name: "Intro", books: ["Starring:Robert Downey Jr.", "Production company:Marvel Studios"]),
            Author_iron(name: "Robert Downey Jr.", books: ["WEAKNESS:CHEESEBURGERS", "ABILITIES:SUPERINTELLIGENCE,UNLIMITED IRON SUITS"])
        ]
        
        var body: some View {
            NavigationView{
                
                VStack{Image(isC ? "Iron" : "Robert Downey Jr")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height:250)
                    .clipped()
                    .brightness(brightnessAmount)
                    .scaleEffect(scale)
                    .blur(radius: blurness)
                Text(isC ? " Iron Man" : "Robert Downey Jr")
                Toggle("", isOn: $isC)
                        Form {
                            HStack {
                                Text("亮度")
                                Slider(value: $brightnessAmount, in: 0...1,
                                minimumValueLabel: Image(systemName: "sun.max.fill").imageScale(.small),
                                maximumValueLabel: Image(systemName: "sun.max.fill").imageScale(.large)) {
                                Text("")
                                }
                                
                            }
                            HStack{
                                Text("大小")
                                Slider(value: $scale,in: 0...1,minimumValueLabel:Image(systemName: "magnifyingglass").imageScale(.small),maximumValueLabel:Image(systemName: "magnifyingglass").imageScale(.large)
                                    ){
                                    Text("")
                                }
                                
                                }
                            HStack{
                                   Text("模糊")
                                   Slider(value:$blurness,in : 0...10,minimumValueLabel:Image(systemName: "drop").imageScale(.small),maximumValueLabel:Image(systemName: "drop").imageScale(.large)){
                                       Text("")
                                   }
                                
                               }
                        }
                    DisclosureGroup(
                        content: {
                            VStack(alignment: .leading) {
                                ForEach(authors_iron, id: \.name) { (author) in
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
                            Label("Iron", systemImage: "heart.fill")
                        }
                    )
                    .padding()
                    }
               
                }
            }
        }


struct Iron_Previews: PreviewProvider {
    static var previews: some View {
        Thor()
    }
}
