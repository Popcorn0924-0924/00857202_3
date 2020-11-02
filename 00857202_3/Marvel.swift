//
//  Marvel.swift
//  00857202_3
//
//  Created by User02 on 2020/10/25.
//

import SwiftUI

struct Marvel: View {

@State private var result:Int=1
@State private var result2:Int=0
@State private var result3:Int=0
@State private var name = ""
@State private var number = 0
@State private var showSheet = false
@State private var showSecondPage = false
@State private var showSecondPage2 = false
@State private var showSecondPage3 = false
@State private var typePick = 0
@State private var typePick2 = 0
@State private var selectedIndex = 0
@State private var showingAdvancedOptions = false
@State private var showingresult = false
@State private var showingall = true
@State private var selectDate = Date()
@State private var love = 80
    
let MoviePlace2=["亞特蘭大", "巴德堡", "加德滿都", "博科特農場", "昆思博羅大橋", "愛丁堡", "聖艾慕斯", "巴拿威梯田"]
    var body : some View{
        VStack{
            Button(action: {
                            self.showSheet = true
                        }) {
                            Image("Marvel")
                            .resizable()
                            .scaledToFit()
                        }
                        .actionSheet(isPresented: $showSheet) {
                            ActionSheet(title: Text("Welcome"), message: Text("MCU！"), buttons: [.default(Text("sure"))])
                        }.buttonStyle(PlainButtonStyle())
                    if showingresult{
                        
                        HStack{
                            Image("p"+String(result+result2))
                               .resizable()
                               .overlay(Rectangle().stroke(Color.black, lineWidth: 10))
                               .frame(width: 130, height: 180, alignment: .center)
                            VStack{
                                Text(name+"將於")
                                Text(selectDate, style: .date)
                                Text("拜訪")
                                Text(MoviePlace2[result3])
                            }
                            
                        }
                        
                        
                    };Toggle("準備出發", isOn : $showingall.animation())
                        .font(.title)
                        .offset(x:5)
            if showingall{
                        Form{
                            
                            if !showingAdvancedOptions{
                                
                                
                                Name(name: self.$name)
                                ScoreStepper(love: self.$love)
                                
                                ＨeroPicker(type: self.$typePick)
                                HStack{
                                    Image("p"+String(result+result2))
                                       .resizable()
                                       .overlay(Rectangle().stroke(Color.black, lineWidth: 10))
                                       .frame(width: 130, height: 180, alignment: .center)
                                    Text((name)+" 喜歡漫威程度為 \(love)")
                                
                                    Button(action:{

                                            switch love {
                                            case 80...90:
                                                self.result = 1
                                            case 91...100:
                                                self.result = 2
                                            default:
                                                self.result = 3
                                            }
                                            switch typePick {
                                            case 0:
                                                self.result2 = 0
                                            case 1:
                                                self.result2 = 2
                                            case 2:
                                                self.result2 = 4
                                            case 3:
                                                self.result2 = 6
                                            case 4:
                                                self.result2 = 8
                                            default:
                                                self.result2 = 10
                                            }
                             
                                        
                             
                                    }){
                                                    Text("AVENGER")
                                                        .font(.custom("Marvel-Regular", size: 18))
                                                        .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                                                        .overlay(RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.black, lineWidth: 5))
                                    }
                                }
                                
                            }
                            Toggle("去哪呢", isOn : $showingAdvancedOptions.animation())
                                .font(.title)
                                .offset(x:5)
                            if showingAdvancedOptions{
                                
                                    
                                        DatePicker("時間", selection: $selectDate,displayedComponents: .date)
                                        
                                VStack{
                                        PlacePicker(selectedIndex: self.$typePick2).frame(width: 330, height: 80)
                                    
                                    
            
                                    Button(action:{

                                            
                                            switch typePick2 {
                                            case 0:
                                                self.result3 = 0
                                            case 1:
                                                self.result3 = 1
                                            case 2:
                                                self.result3 = 2
                                            case 3:
                                                self.result3 = 3
                                            case 4:
                                                self.result3 = 4
                                            case 5:
                                                self.result3 = 5
                                            case 6:
                                                self.result3 = 6
                                            case 7:
                                                self.result3 = 7
                                            case 8:
                                                self.result3 = 8
                                            
                                            default:
                                                self.result3 = 10
                                            }
                                        
                                        showingresult=true
                                        showingall = false
                                        
                             
                            }){
                                        Text("AVENGER")
                                            .font(.custom("Marvel-Regular", size: 50))
                                            .accentColor(.yellow)
                                    }
                                }
                              
                            
                        }
                        
                    }//VStack
            
            }
            
                HStack{
                    GeometryReader { geometry in
                        VStack{
                           
                            
                            
                            HStack(){
                                
                                Button("Iron Man") {
                                    self.showSecondPage = true
                                    
                                }
                                .background(Color.black)
                                .foregroundColor(.white)
                                .padding(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 5))
                                .frame(width: geometry.size.width/3, height: geometry.size.width/10 )
                                
                                .sheet(isPresented: $showSecondPage) {
                                Iron()
                                }.offset(y:100)
                                
                                Button("Captain America") {
                                    self.showSecondPage2 = true
                                    
                                }
                                .background(Color.black)
                                .foregroundColor(.white)
                                .padding(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 5))
                                .frame(width: geometry.size.width/2.8, height: geometry.size.width/6 )
                                
                                .sheet(isPresented: $showSecondPage2) {
                                Captain()
                                }.offset(y:100)
                                
                                Button("  Thor   ") {
                                    self.showSecondPage3 = true
                                    
                                }
                                .background(Color.black)
                                .foregroundColor(.white)
                                .padding(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 5))
                                .frame(width: geometry.size.width/4, height: geometry.size.width/6 )
                                
                                .sheet(isPresented: $showSecondPage3) {
                                Thor()
                                }.offset(y:100)

                       
                            }.offset(y:-120)
                        }
                    }
                }
                .frame(width: 500, height: 180, alignment: .bottom)
                .background(Image("logo2").resizable().position(x: 300, y: 280).frame(width: 600, height: 380).opacity(0.8))
                
        
    }
}

struct Marvel_Previews: PreviewProvider {
    static var previews: some View {
        Marvel()
    }
}

struct Name: View {
    @Binding var name: String
    
    var body: some View {
        TextField("name", text: self.$name)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 3))
    }
}
struct ＨeroPicker: View {
    @Binding var type: Int
    
    let types=["蜘蛛人", "浩克", "鋼鐵人", "美國隊長", "索爾"]
    
    
    var body: some View {
        Picker(selection: self.$type,label:Text("選擇你的最愛")){
            ForEach(0 ..< types.count) { (index) in
                Text(self.types[index])
            }
        }.pickerStyle(SegmentedPickerStyle()).background(Color.gray)
       
    }
}
struct PlacePicker: View {
    @Binding var selectedIndex: Int
    
    
    let MoviePlace=["亞特蘭大", "巴德堡", "加德滿都", "博科特農場", "昆思博羅大橋", "愛丁堡", "聖艾慕斯", "巴拿威梯田"]
    
    var body: some View {
        Picker(selection: self.$selectedIndex,label:Text("選擇你的最愛")){
            ForEach(0 ..< MoviePlace.count) { (index) in
               
                Text(self.MoviePlace[index]).foregroundColor(.white)
            }
            
        }.pickerStyle(WheelPickerStyle()).background(Color.black)
    }
}
struct ScoreStepper: View {
    @Binding var love: Int
    
    var body: some View {
        Stepper("喜愛程度：" + String(format: "%.1d", love), value: $love, in: 80 ... 100)
    }
}
struct Label:View {
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
