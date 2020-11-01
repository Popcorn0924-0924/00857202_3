//
//  test.swift
//  00857202_3
//
//  Created by User02 on 2020/10/25.
//

import SwiftUI

struct test: View {
    @State private var age = 18

        var body: some View {
            VStack {
                Stepper("Enter your age", onIncrement: {
                    self.age += 1
                    print("Adding to age")
                }, onDecrement: {
                    self.age -= 1
                    print("Subtracting from age")
                })

                Text("Your age is \(age)")
            }
        }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
