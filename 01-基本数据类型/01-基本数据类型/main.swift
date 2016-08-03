//
//  main.swift
//  01-基本数据类型
//
//  Created by qingyun on 16/7/31.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Foundation //导入Foundation框架

//main函数是隐式存在的,main.swift文件中的非声明类代码都是处于main函数内部的,会逐行执行,类似于脚本语言
print("Hello, World!") //C:printf OC:NSLog
NSLog("Hello,swift!")//NSLog不需要@
NSLog("Hello,swift!"); NSLog("Hello,swift!")//默认不需要加分号,但是如果一行多条语句,必须加

print("11")
print("2222")

//不换行
print("333",terminator:"")//terminator参数有默认值,是"\n"
print("444")

//多行注释可以嵌套
/*
 /*
 
 */
*/


//1. var和let,var变量,可以多次赋值;let只能赋值一次
//首选let,安全
//swift具有强大的类型推断功能,一般不需要标明类型
var str = "hello,world!"
str = "123"

let int = 10
//int = 8

//类型标注
var a:Int
var b,c,d:Int

a = 10

let e:Int = 10//一般没有必要同时类型标注和赋值
let f:Float = 10 //如果所需类型和初值类型不同,则需标注

//变量名支持Unicode字符
let 你好 = "你好"
let 😊 = "smile"


//打印变量直接print(变量名)
print(你好)
print(f)

//2.基本数据类型
//整型一般用Int,位数和系统原生字长相同,比如64位系统,Int == Int64
//有符号Int8/16/32/64,无符号:UInt8/16/32/64
let oneByte:Int8 = -128
let five = 0b101//二进制0b
print(five)
let ten = 0o12//八进制0o
print(ten)

let fifteen = 0xF //十六进制
print(fifteen)

print(Int8.max)
print(Int8.min)

let million = 1_000_000 //数值加_不影响大小
print(million)

//浮点型:Float/Double
let float = 3.14 //默认是Double
let float1:Float = 3.14

let float2 = 1.25e3
print(float2)

let float3 = 0xF.4p2 //(15 * 16^(0) + 4 * 16^(-1))*2^2
print(float3)


//字符串:String 
let string = "string"
let S:Character = "S"//单个字符

//拼接
let string1 = "Hello" + string
print(string1)

//OC NSString
let string2:NSString = "nsstring"
let string3:NSString = string2.stringByAppendingString("123")
let string4 = (string2 as String) + (string3 as String)

var string5 = "12"
string5 += "34"

//插值:\()
let string6 = "hello,\(float3)"
print(string6)

print("float3的值是:\(float3)") //对比C/OC里面的占位%d/%f...

print("浮点数为:\(float),\(float1),\(float2)")

//布尔类型:true/false OC:YES/NO
var isMan = true

//if 1 {} //非0即真不适用
isMan = Bool(0) //调用构造器做转换
print(isMan)


//类型转换:类型相同才可以赋值或运算
let int10 = int+Int(float1) //浮点转换为整型,直接截断整数部分,不会四舍五入
print(int10)

let float10 = Float(int)+float1

let int11 = Int(false)
print(int11)

let int8:Int8 = 10
let int16:Int16 = 16
let int17 = Int16(int8)+int16 //整型的位数不同,也算作不同类型

//字符串和其他类型的转换
let strInt = String(int8)
print(strInt)
let strFloat = String(3.14)
let strBool = String(isMan)

let intStr = Int("x123") //返回值是可选的Int,要么成功会有一个Int数,要么转换失败,为nil
print(intStr)

let intStr1 = "123".intValue
print(intStr1)

let floatStr = "3.14".floatValue
print(floatStr)

let boolStr = "0".boolValue
print(boolStr)


//类型别名
//C:typedef 原类型 新类型名
//swift:typealias 新类型名 = 原类型
typealias Byte = Int8

var ten1:Byte
var ten11:Int8




