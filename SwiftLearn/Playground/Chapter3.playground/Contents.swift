import UIKit

var str = "Hello, playground"


var age = 100
MemoryLayout<Int>.size //变量实际用到的内存大小
MemoryLayout<Int>.stride //变量被分配的内存大小
MemoryLayout<Int>.alignment //内存对齐参数

MemoryLayout.size(ofValue: age)
MemoryLayout.stride(ofValue: age)
MemoryLayout.alignment(ofValue: age)


enum Password {
    case number(Int,Int,Int,Int)
    case other
}

//枚举的内存分布控件
//  枚举变量内存 先保存关联变量 还有一个字节保存原始值 再按照对齐参数进行分配内存 枚举变量会按照最大变量的内存去分配

var pwd = Password.number(5,6,7,8)
MemoryLayout.size(ofValue: pwd)
MemoryLayout.alignment(ofValue: pwd)
MemoryLayout.stride(ofValue: pwd)
pwd = Password.other
MemoryLayout.stride(ofValue: pwd)

//原始值 原始值是不容许自定义 不会在枚举变量内存中分配空间 会在rawValue的时候获取

//原始值和关联值的本质区别 在于关联值被保存在枚举变量内存中，而原始值不会保存到枚举类型变量内存中。



