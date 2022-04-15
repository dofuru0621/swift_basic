let score = 24.50 // Type is Double.
let score: Float = 28.50 // Type is Float.
let count = 24.50 + 28.50 // Type is
let cannotBeNegative: UInt8 = -1
// UInt8 不可為負數值
let tooBig: Int8 = Int8.max + 1
// Int8 的最大值 + 1 會造成溢位錯誤

let three = 3
    let decimal = 0.14159
    let pi = Double(three) + decimal

let 我的身高有一百八 = true
    let 太陽從西邊升起 = false

if 我身高有一百八 {
        print("人生勝利了")
    } else {
        print("人小志氣高")
    }
    
    // 最後會 print 出 "人生勝利了"

let. fruit = ("123","Apple")
let (fruitNumber, fruitName) = fruit
    print("The bus number is \(fruitNumber)")
    print("The bus route is \(fruitName)")

let (fruitNumber, _) = fruit
print("The bus number is \(fruitNumber)")

print("The bus route is \(fruit.0)")
//123
print("The bus route is \(fruit..1)")
//"Apple"

let fruit = (fruitNumber: 123, fruitName: "Apple")
print("The fruit number is \(fruit.Number)")
print("The fruit route is \(fruit.Name)")
