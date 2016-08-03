//
//  main.swift
//  02-元组和可选
//
//  Created by qingyun on 16/7/31.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Foundation

print("Hello, World!")

//元组
//定义形式:圆括号里面罗列若干个值,这种组合叫元组
let point = (1,5) //类型被推断为(Int,Int)
let person = ("zhangsan",20,true) //(String,Int,Bool)

//元素的访问:通过下标或者名称
print("point的坐标:\(point.0),\(point.1)")
let point1 = (x:2,y:6) //定义时给元素起名
print("point1的坐标:\(point1.0),\(point1.1)")
print("point1的坐标:\(point1.x),\(point1.y)")

//元素拆分
let (x,y) = point
print("x = \(x)")
print("y = \(y)")
//下划线用于忽略不关心的元素
let (_,yy) = point1
print("yy = \(yy)")


let student:(String,Int) = (name:"李四",age:21)
print("名字:\(student.0)")
//print(student.name) //类型标注和元素名称同时存在时,访问元素只能通过下标

var stu = ("wangwu",20)
//stu = ("zhaoliu",20,false) //元素个数不能更改
stu = ("zhaoliu",20)

//元组的使用:用于临时组织少量的数据,比如函数的返回值
//如果数据量大或者需要长期使用,还是要考虑结构体或者类

//可选类型
//处理值缺失的情况
//对比OC里面的nil:只能表示对象为空,不能处理基本数据类型
//swift的可选可以表示任何类型为空的情况

//定义形式: 类型名?
var possibleInt:Int? //表示这个变量要么有一个Int值,要么为空,什么也没有
possibleInt = 100
possibleInt = nil

var str:String?//一般可选类型都使用var,因为可选类型有可能有值,有可能为空,需要牵扯到多次赋值
//str = nil
print(str)
str = "hello"
print(str)

//强制解析:如果有值,把值取出来.
if str != nil {
    print(str!)
}

var str1:String

//str1 = str! //强制解析后的值是非可选类型

//可选绑定:如果有值,则把值取出来,并且赋值给临时变量或者常量
//常用于可选类型是由一些复杂的表达式或者方法调用得到的结果
if let string = str {
    //print(str!)
    print(string)
}

if let string = str,let int = possibleInt{//可以同时绑定多个可选类型,是"与"的关系
    print("两个可选都有值")
}


//隐式解析可选类型: 仍属于可选类型,所以上面的操作可以正常用
//在程序的运行过程中,如果赋了一个有效值之后,不会再为nil,可考虑使用这种可选.
//好处在于:解析时不需要!
var implicitOptionalInt:Int! // == nil

implicitOptionalInt = 20
implicitOptionalInt = 50
//implicitOptionalInt = nil

//if implicitOptionalInt != nil {
//    print(implicitOptionalInt!)
//}
print(implicitOptionalInt)
