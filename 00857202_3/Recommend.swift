//
//  Recommend.swift
//  00857202_3
//
//  Created by User02 on 2020/10/25.
//

import SwiftUI

struct Recommend: View {
    @State private var showImg = true
    var body: some View {

                  if(showImg) {
                      Image("1")
                          .resizable()
                          .scaledToFit()
                          .padding()
                          .frame(width:300, height:400)
                          .transition(.opacity)
                          .contextMenu {
                              Button(action: {
                                  self.showImg = false
                              }) {
                                  Text("我不想看到圖片")
                                  Image(systemName: "eye.slash")
                              }
                              Button(action: {}) {
                                  Text("沒事按好玩的")
                                  Image(systemName: "flame")
                              }
                      }
                      .onAppear {
                          self.showImg = true
                          
                      }
                      .onDisappear {
                          self.showImg = false
                      }
                  }
    }
}

struct Recommend_Previews: PreviewProvider {
    static var previews: some View {
        Recommend()
    }
}
