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
        
        //枚举的简单定义和简单应用
        //第一种定义方式
        enum Direction{
            case north
            case south
            case east
            case west
        }
        //第二种定义方式
        enum Direction1  {
            case north,south,east,west
        }
    
    
        //枚举的简单使用
        var dir = Direction.west
        dir = Direction.north
        dir = .east
        print(dir)
    
        switch dir {
            case .east:
                print(Direction.east)
            default:
            break
        }
        
        //枚举关联值的使用
        enum Score {
            case points(Int)
            case grade(Character)
            case Level(String)
            case LevelStr(String,String)
        }
        
        var score = Score.points(100)
        score = .grade("A")
        score = .Level("dddd")
        score = .LevelStr("zhangsan", "lisi")
        switch score {
            case let .points(i):
                print(i)
            case let .grade(i):
                print(i)
            case let .Level(i):
                print(i)
            case  .LevelStr(let str0,var str1):
                print("\(str0)  \(str1)")
                str1 = ""
        }
        
        //枚举原始值的使用 只有在定义枚举的时候指定了类型 才可以点出原始值
        enum PokerSuit:Character {
            case spade = "♠"
            case heart = "❤"
            case diamond = "♦"
            case club = "♣"
        }
        let suit:PokerSuit = .spade
        print(suit.rawValue)
        
        

        
        
        
        
    }
}



