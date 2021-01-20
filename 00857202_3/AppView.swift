//
//  AppView.swift
//  00857202_3
//
//  Created by User03 on 2020/11/1.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        
            TabView{
//                 Marvel()
//                     .tabItem{
//                         Text("Home")
//                         Image(systemName:"house.fill")
//                 }
//                 Place()
//                     .tabItem{
//                         Text("Intro")
//                         Image(systemName:"heart.fill")
//                     }
                random()
                    .tabItem{
                        Text("Movie")
                        Image(systemName:"play.rectangle.fill")
                    }
               
            }
      
        }
 }
    


struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
