import UIKit

var str = "Hello, playground"

enum Direction {
    case north
    case south
    case east
    case west
}


enum AlertType{
    case AlertType1(str0:String,str1:String,str2:String,str3:String)
    case AlertType2(str0:String,str1:String,str2:String,str3:String)
    case AlertType3(str0:String,str1:String,str2:String,str3:String)
}

let type0 = AlertType.AlertType1(str0: "str10",str1: "str11",str2: "str12",str3: "str13")
type0.str0
//type.str0
//type.str2
//type.str3
