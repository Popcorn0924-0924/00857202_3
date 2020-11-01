//
//  atuo.swift
//  00857202_3
//
//  Created by User02 on 2020/10/27.
//

import SwiftUI

struct atuo: View {
    @State private var picTime=Date()
    @State private var autoPlay: Bool = true
    var body: some View {
        VStack{
            Toggle("自動播放" ,isOn:$autoPlay)
            GeometryReader{ geometry in
                //Image("\(self.autoPlay?(self.number % 6) + 2015 : self.year )")
                
            }
        }
    }
}

struct atuo_Previews: PreviewProvider {
    static var previews: some View {
        atuo()
    }
}
