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
