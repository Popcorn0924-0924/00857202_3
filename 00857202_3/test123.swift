//
//  test123.swift
//  00857202_3
//
//  Created by User03 on 2020/11/1.
//

import SwiftUI

import SwiftUI

struct test123 : View
{
    //给当前的结构体添加一个数组属性，作为Picker列表的数据源。
    private let animals = ["🐶 Dog", "🐯 Tiger", "🐷 Pig"]
    //添加一个整形属性，作为列表里的处于选择状态的选项的索引值，并给它添加@State绑定包装标记，
    //使该属性和界面中的Picker视图进行数据绑定。
    @State private var selectedAnimal = 0

    var body: some View
    {
        VStack
            {
                //初始化一个Picker视图，并将它和selectedAnimal属性进行绑定，
                //当用户操作Picker视图时，该属性的值将同步发生变化。
                Picker(selection: $selectedAnimal, label: Text("animals"))
                {
                    //设置Picker视图的内容，首先添加一个循环语句，对数组进行遍历操作，
                    ForEach(0 ..< animals.count)
                    {
                        //并通过文本视图，显示数组里的每一个元素。
                        Text(self.animals[$0]).tag($0)
                    }
                }
                    //设置拾取器的样式为分段拾取器样式。
                    .pickerStyle(SegmentedPickerStyle())
                //添加一个文本视图，显示用户所选的内容。
                Text("Your choice: \(animals[selectedAnimal])")
        }
            //设置垂直排列视图的内边距，使拾取器和屏幕的左右两侧保持一定的距离。
            .padding()
    }
}

#if DEBUG
struct test123_Previews : PreviewProvider {

    static var previews: some View {
        test123()
    }
}
#endif
