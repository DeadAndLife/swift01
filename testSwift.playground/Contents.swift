//: Playground - noun: a place where people can play

import UIKit

//var 表示变量
var str = "Hello, playground"
str = "swift"
//let 表示常量:值不能改变
let int = 10
//int = 10

var str1:String//类型标注

//for循环
var int1 = 5

for i in 0..<10{//..<不包括右边,...包括右边
    int1 += i
}

let color = UIColor.redColor()

let view = UIView(frame: CGRectMake(0,0,100,200))
view.backgroundColor = UIColor.yellowColor()

let btn = UIButton(frame: CGRectMake(0,0,100,200))
btn.backgroundColor = UIColor.blueColor()
btn.setTitle("我是按钮", forState: .Normal)


