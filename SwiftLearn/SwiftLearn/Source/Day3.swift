//
//  Day3.swift
//  SwiftLearn
//
//  Created by liuyinghui on 2020/2/25.
//  Copyright © 2020 liuyinghui. All rights reserved.
//

import Foundation

class Day3: NSObject {
    override init() {
        super.init()
        Test()
    }
    
    func Test() -> Void {
        
//        //枚举的简单定义和简单应用
//        //第一种定义方式
//        enum Direction{
//            case north
//            case south
//            case east
//            case west
//        }
//        //第二种定义方式
//        enum Direction1  {
//            case north,south,east,west
//        }
//
//
//        //枚举的简单使用
//        var dir = Direction.west
//        dir = Direction.north
//        dir = .east
//        print(dir)
//
//        switch dir {
//            case .east:
//                print(Direction.east)
//            default:
//            break
//        }
//
//        //枚举关联值的使用
//        enum Score {
//            case points(Int)
//            case grade(Character)
//            case Level(String)
//            case LevelStr(String,String)
//        }
//
//        var score = Score.points(100)
//        score = .grade("A")
//        score = .Level("dddd")
//        score = .LevelStr("zhangsan", "lisi")
//        switch score {
//            case let .points(i):
//                print(i)
//            case let .grade(i):
//                print(i)
//            case let .Level(i):
//                print(i)
//            case  .LevelStr(let str0,var str1):
//                print("\(str0)  \(str1)")
//                str1 = ""
//        }
//
//        //枚举原始值的使用 只有在定义枚举的时候指定了类型 才可以点出原始值
//        enum PokerSuit:Character {
//            case spade = "♠"
//            case heart = "❤"
//            case diamond = "♦"
//            case club = "♣"
//        }
//        let suit:PokerSuit = .spade
//        print(suit.rawValue)
        
//        可选项，一般也叫可选类型，它允许将值设置为nil
//        在类型名称后面加个问号? 来定义一个可选项
        
//          //变量定义
//            var name:String? = "Jack"
//            name = nil
//
//            var age: Int? // 默认就是nil
//            age = 10
//            age = nil
//            var array = [1, 15, 40, 29]
//            //函数返回值
//            func get(_ index: Int) -> Int? {
//
//                if index < 0 || index >= array.count {
//                    return nil
//                }
//                return array[index]
//            }
          
        //强制解包
//        可选项是对其他类型的一层包装，可以把它理解为一个盒子
//        如果为nil，那么它就是一个空盒子
//        如果不为nil，那么盒子里装的是：被包类型的数据,需要使用感叹号 ！ 进行强制解包。
//        如果对值为nil的可选项进行强制解包就会出现运行时错误。
        
//        var age:Int?
//        age = 10
//        age = nil
//
//        var ageInt:Int = age!
//        ageInt += 10
//
//        判断可选项是否包含值
//        可以使用if 判断
        
//        let number = Int("123")
//        if number != nil {
//            print("字符串转换整数成功：\(number!)")
//        }else{
//            print("字符串转换整数失败")
//        }
//
////        可选项绑定
////        如果包含就自动解包，把值赋给一个临时的常量或者变量，并且返回true，否则返回false
//
//         if let number  = Int("a123") {
//             print("字符串转换整数成功：\(number)")
//         }else{
//             print("字符串转换整数失败")
//         }
//
//        if let first = Int("4") {
//            if let second = Int("60") {
//                if first < second && second < 100 {
//                    print("\(first) \(second)")
//                }
//            }
//        }
//        //一定要注意可选项绑定 不能和后边的条件用 && 连接
//        if let first = Int("4"), let second = Int("50") , first < second && second < 100 {
//
//            print("\(first) \(second)")
//
//        }
        
        //可选项绑定可以在循环中使用
        // 遍历数组，将遇到的正数都加起来，如果遇到负数或者非数字，停止遍历
        let strs = ["10", "20", "abc", "-20", "30"]
        var index = 0
        var sum = 0
        while let num = Int(strs[index]), num > 0 {
            sum += num
            index += 1
        }
        print(sum)
        
        sum = 0
        
        // 遍历数组，将遇到的正数都加起来，如果遇到负数或者非数字,就跳过
        for numStr in strs {
            if let num = Int(numStr), num > 0{
                sum += num
            }
        }
        print(sum)
        
//        空合并运算符 ??
//        a ?? b
//        a 是可选项
//        b 是可选项 或者 不是可选项
//        b 跟 a 的存储类型必须相同
//        如果 a 不为nil，就返回 a
//        如果 a 为nil，就返回 b
//        如果 b 不是可选项，返回 a 时会自动解包
        
          
    }
}



