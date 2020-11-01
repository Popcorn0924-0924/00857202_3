
import SwiftUI

struct CharacterDetail: View {
    var Char : Character
    let place : location
    @State private var showMap = false
    var body: some View {
        ScrollView
        {
            VStack{
                Image("place"+Char.id)
                    .resizable()
                    .frame(width:200, height:200)
                Spacer()//間距
                Text(Char.name)
                    .bold()
                    .font(.largeTitle)
                    .padding(.leading,0)//間距左
                    
                Text(Char.ename)
                    .padding(.leading,0)//間距左
                Spacer()//間距
                Section(header: Label3(Sphenisciformes: "經緯度")){
                                    Text("\(place.latitude) / \(place.longitude)")
                                        .padding()
                                        .font(.title2)
                                        
                                }
                Text("介紹")
                    .bold()
                    .font(.title)
                TextEditor(text: .constant(Char.intro))
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding()
                    .multilineTextAlignment(.center)
                                    .font(Font.custom("jf-openhuninn-1.0", size: 15))
               
                    
                Button(action:{
                                    showMap = true
                                }){
                                    HStack{
                                        Image(systemName: "love.fill").scaleEffect(50)
                                        Text("  查看地圖").font(.title2)
                                    }
                                }.buttonStyle(PlainButtonStyle())
                                .foregroundColor(.blue)
                                .fullScreenCover(isPresented: $showMap){
                                    map(showMap: $showMap,name: place.name ,latitude: place.latitude, longitude: place.longitude)
                                }
}
        }
        .navigationBarTitle(Char.name)
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(Char: Aptenodytes[1], place: MarvelPlace[1])
    }
}
struct Label3:View {
            let Sphenisciformes:String
                
                var body: some View {
                    ZStack {
                        
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
    
