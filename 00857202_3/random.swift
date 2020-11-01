//
//  random.swift
//  00857202_3
//
//  Created by User02 on 2020/10/25.
//

import SwiftUI

struct random: View {
    @State private var result : Int = 1
    @State private var showAlert = false
    @State private var showImg = true
    @State private var bgColor = Color.white
        var body: some View {
            
            ZStack{
//                Image("back")
//                    .resizable()
//                    .frame(width: 450, height: 1510, alignment: .center)
                ColorPicker("\t\t\t\t\t\tMarvel", selection: $bgColor)
                        .frame(width: 380, height: 70)
                        .background(bgColor)
                        .position(x: 210, y: -250)
                 Image(String(result))
                    .resizable()
                    .overlay(Rectangle().stroke(Color.black, lineWidth: 10))
                    .position(x: 180, y: -190)
                    .frame(width: 350, height: 400, alignment: .center)
                    .contextMenu {
                        Text("Love You 3000")
                        Button(action: {
                            self.showImg = false
                        }) {
                            Text("I am Iron-man")
                            Image(systemName: "flame")
                        }
                        Button(action: {}) {
                            Text("I still believe in heroes")
                            Image(systemName: "flame")
                        }
                }
                    .onAppear {
                        self.showImg = true
                        
                    }
                    .onDisappear {
                        self.showImg = false
                    }
                 Button(action:{
                     let randNum = 1...21
                     self.result = randNum.randomElement()!
                     self.showAlert = true}){
                     Text("與哪位英雄看電影？")
                         .font(.title)
                         .fontWeight(.bold)
                         .padding()
                         .foregroundColor(.white)
                         .background(Color.black)
                         .cornerRadius(10)
                 }
             }.offset(x:0, y:300)
                 .alert(isPresented: $showAlert) { () -> Alert in
                    return Alert(title: Text("I can do this all day"), message:Text(movie[result-1].name),dismissButton: .destructive(Text("OK"), action: {
                         print("OK")
                     }))
        }
    }
}

struct random_Previews: PreviewProvider {
    static var previews: some View {
        random()
    }
}
