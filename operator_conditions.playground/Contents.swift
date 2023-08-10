import UIKit

/// 산술 연산자
let first = 10
let second = 3

let sum = first + second
let idff = first - second

let multiple = first * second
let divided = first / second

let remainder = first % second

 
/// operator overloading
let str1 = "aaa"
let str2 = "bbb"

let str = str1 + str2 // aaabbb

let names1 = ["April", "Bob"]
let names2 = ["Chuck", "David"]

let names = names1 + names2


/// compound operator - 연산자를 좀 더 줄여서 쓸 수가 있음
var price1 = 10
price1 += 1 // 11

var price2 = 20
price2 -= 5 // 15

var price3 = 30
price3 *= 3 // 90

var price4 = 40
price4 /= 2 // 20

var quote = "Hello, Swift"
quote += " Playgrounds"


/// comparison operator - 비교 연산자
let score1 = 6
let score2 = 4

score1 == score2 // false
score1 != score2 // true

score1 > score2 // true
score1 >= score2 // ture

score1 < score2 // false


/// conditions - 조건문
let num1 = 3
let num2 = 5

let sum1 = num1 + num2

if sum1 > 10 {
    print("over 10")
} else {
    print("not over 10")
}


/// combining conditions
let age1 = 15
let age2 = 25

if age1 > 19 && age2 > 19 {
    print("19세 이상 영화를 같이 볼수 있겠네요")
}

if age1 > 20 || age2 > 20 {
    print("20세 이상 보호자가 있으면 놀이공원에 들어갈수 있어요")
}



/// ternary operator
let age3 = 30
let age4 = 40

let text = age3 == age4 ? "same" : "not same"


/// switch statement
enum Direction {
    case up
    case down
    case left
    case right
}

let direction = Direction.down

switch direction {
case .up:
    print("up")
case .down:
    print("down")
case .left:
    print("left")
case .right:
    print("right")
}
