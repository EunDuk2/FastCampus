import UIKit

// 초심플 함수

func printHello() {
    print("Hello Swift World! 🔥🔥")
}

printHello() // "Hello Swift World! 🔥🔥"


func printName(name: String) {
    print("name is \(name)")
}

printName(name: "Jason") // "name is Jason"

func makeDouble(num: Int) -> Int {
    return num * 2
}

let result = makeDouble(num:3)

print(result) // 6


// 외/내부 paramter label 변경 -> 호출할때 더 읽기 쉬움
func printName(of name: String) { // of는 외부적인 이름, name은 내부적인 이름
    print("name is \(name)")
}

printName(of: "Jason") // "name is Jason"


// 외부 paramter 를 생략하고 싶은 경우 -> 호출할때 더 읽기 쉬움
func printName(_ name: String) {
    print("name is \(name)")
}

printName("Jason") // "name is Jason"


func discount(price: Double, ratio: Double = 0.2) -> Double {
    return price * (1 - ratio)
}

let defaultRatioApplied = discount(price: 2000)
print(defaultRatioApplied)  // 1600

let customRatioApplied = discount(price: 2000, ratio: 0.5)
print(customRatioApplied)  // 1000

func printNames(_ names: String...) {
    for name in names {
        print("name is \(name)")
    }
}

printNames("James", "Roy", "Jake")
// name is James
// name is Roy
// name is Jake


enum DivideError: Error {
    case cannotZero
}

func divide(dividend: Int, divisor: Int) throws -> Int {
    if divisor == 0 {
        throw DivideError.cannotZero
    }
    
    return Int(dividend / divisor)
}


do {
    let result = try divide(dividend: 80, divisor: 6)
    // let result = try divide(dividend: 80, divisor: 0)
    print(result)
} catch {
    print(error.localizedDescription)
}


func makeTriple(num: inout Int) {
    num *= 3
}

var num = 8
makeTriple(num: &num)

print(num)
