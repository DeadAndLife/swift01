//
//  main.swift
//  03-运算符和控制语句
//
//  Created by qingyun on 16/7/31.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Foundation

print("Hello, World!")

//运算符

//1.赋值运算符=没有返回值
var int = 10
var int1 = int

if int == 10{//if int = 10 相当于没有写条件
    print("int等于10")
}

//+ - * / 不支持溢出
//var int2:Int8 = Int8.max + 1
var int3 = Int8.min &- 1
print(int3)

//% ++ -- 支持浮点型
var float = 10 % 0.3
print(float)

float++
print(float)

float += 1

//区间运算符 ..<不包括右边数  ...包括右边数
//..<用于数组比较方便
for i in 0...5{
    print("hello")
}

//空合运算符:??
//a??b 等价于 a != nil?a!:b 
var customColor:String? = "红色"
let defaultColor = "黑色"

var color = customColor ?? defaultColor
print(color)


//条件语句: if/guard/switch
//if和之前的用法差别在于:条件不需要(),执行体 必须有{}
var score = 90
if score > 80 {
    print("分数优秀")
} else if score >= 60 {
    print("及格")
} else {
    print("不及格")
}

//guard语句: guard 条件 else {条件不成立时要干什么}

func checkUp(person:[String:String]){
    guard let id = person["id"] else {
        print("没有身份证,不能进考场!")
        return
    }
    
    guard let examNo = person["examNo"] else{
        print("没有准考证,不能进考场!")
        return
    }
    
    print("证件齐全:\(id),\(examNo),请进考场.")
    
}

checkUp([:])
checkUp(["id":"410223..."])
checkUp(["id":"410222...","examNo":"123456"])


//if和guard对比:
//1. guard 中只需要关心所需要的条件,避免费心思去罗列不成功的条件,或者需要if的嵌套
//2. guard中的可选绑定的变量在guard所处的作用域中都可以直接使用,不需要再次解析


//switch 
//不需要break,支持多模式匹配
var month = 3
switch month {
case 1,3,5,7,8,10,12:
    print("31天")
case 4,6,9,11:
//case 4...11:
    print("30天")
case 2:
    print("28或者29天")
default://switch 必须列举所有情况,如果其他情况不方便列举,直接使用default
    break
}

let point = (2,3)
switch point {
case (0,0): //确定的元组
    print("原点")
case (0,_):
    print("y轴的点")
case (let x,0)://值绑定
    print("x轴上的点,坐标为:\(x)")
//case (let x,let y)
//case let(x,y):
//    print("不在坐标轴上的点:\(x),\(y)")
case (-2...2,-4...5):
    print("在矩形内的点")
case let (x,y) where x == y: //where子句可以附加额外的条件
    print("直线y=x上的点")
default:
    break
}

//显式贯穿fallthrough

var time = "下午"

switch time {
    
    case "下午":
    print("唱歌或者技术分享")
    fallthrough //直接进入下面的分支,fallthrough下面的语句不会执行
//    print("xxxx")
    case "上午":
    print("上课")
//    fallthrough
    case "晚上":
    print("上自习")
    default:
        break
}


//循环
//for

//for var i=0;i<10;i++ {
//    print("hello,\(i)")
//}

for i in 0...10{
    print("hello,\(i)")
}

for _ in 0..<9 {//不需要关心中间循环变量的值,则可以使用_代替
    print("hello")
}

var i = 0
while i<5 {
    i++
    print("i的值:\(i)")
}

//repeat-while == 之前的do-while
repeat { //第一次直接执行,不判断条件
    print(i)
}while i<5


//复杂语句嵌套时,支持加标签
//对于break,可以指定到底要跳出哪层语句
outsideFor:for i in 1...9 {
    insideFor:for j in 1...i {
        print("\(i)*\(j) = \(i*j)",terminator:" ")
        if i*j == 24 {
            //break insideFor//默认跳出当前循环
            break outsideFor
        }
    }
    print("\n")//单独打印换行
}
