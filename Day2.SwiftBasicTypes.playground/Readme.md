#   基本型別 ( Swift Basic Types )
>   帶你一起來看不能不知道的Swift基本型別

##  整數 ( Intergers )

整數是沒有小數點的數值，可分為：
<li>有符號 → 正數、負數或是零</li>
<li>無符號 → 正數或零</li>

##  浮點數 ( Float, Double )

浮點數是帶有小數點的數值，分為兩種類型：

<li>單精度浮點數 ( Float ) → 佔用記憶體 32bits</li>
<li>雙精度浮點數 ( Double ) → 佔用記憶體 64bits</li>

```
    let score = 24.50 // Type is Double.
    let score: Float = 28.50 // Type is Float.
    let count = 24.50 + 28.50 // Type is Double.
```

##  溢位問題 ( Overflow )

```
    let cannotBeNegative: UInt8 = -1
    // UInt8 不可為負數值
    let tooBig: Int8 = Int8.max + 1
    // Int8 的最大值 + 1 會造成溢位錯誤
```

##  轉換 ( Conversion )

如果今天要將兩個不同型別的變數或常數互相做運算，此時就需要轉換成相同型別，以下面這個例子為例：
```
    let three = 3
    let decimal = 0.14159
    let pi = Double(three) + decimal
```
如果沒有將 three 轉換成 Double 型別的話，在編譯時會跳出 
<font color=#FF0000>Binary operator '+' cannot be applied to operands of type 'Int' and 'Double</font>，不允許這樣執行加法。

##  布林值 ( Booleans )
Swift 的布林型別叫做 Bool，布林值又稱邏輯值，因為他只能是 true 或是 false。

```
    let 我的身高有一百八 = true
    let 太陽從西邊升起 = false
```

跟上面的 Double 以及 Int 一樣，透過型別推論初始值可以得知，這兩個常數的型別都是 Bool，透過型別推論，也可以讓程式碼更簡潔有力，對於流程控制布林值就很方便，之後章節會再提到。
```
    if 我身高有一百八 {
	    print("人生勝利了")
    } else {
    	print("人小志氣高")
    }
    
    // 最後會 print 出 "人生勝利了"
```

##  元組 ( Tuples )
你可以使用 Tuple 將多個資料（ 可以不同型別 ）組合成一個複合值，可以用來存取及傳遞。

舉個例子，這邊有一個 Tuple 用來存取水果編號以及水果名稱。


```
    let. fruit = ("123","Apple")
```

在宣告變數你也可以使用 Tuple 作為初始值。在宣告變數你也可以使用 Tuple 作為初始值。

```
    let (fruitNumber, fruitName) = fruit
    print("The bus number is \(fruitNumber)")
    print("The bus route is \(fruitName)")
```

如果你只需要 Tuple 中某些資料時，你可以使用 _ 忽略。


```
    let (fruitNumber, _) = fruit
    print("The bus number is \(fruitNumber)")
```

如果你不想透過變數或常數來去存取資料的話，你也可以在 Tuple 後面加索引值 ( 第一個索引值為 0 ) 去取得裡面的資料。

```
    print("The bus route is \(fruit.0)")
    //123
    print("The bus route is \(fruit..1)")
    //"Apple"
```

但是用這種索引值的方式，就程式碼的易讀性來說會比較差，所以你可以替每個值命名，這樣程式碼看起來就比較清楚在做什麼。
```
    let fruit = (fruitNumber: 123, fruitName: "Apple")
    print("The fruit number is \(fruit.Number)")
    print("The fruit route is \(fruit.Name)")
```
