import UIKit

//let checking = {
//    print("checking 🔥🔥🔥")
//}
//
//checking() // "checking 🔥🔥🔥"

//let checking = { (id: String) in
//    print("checking 🔥🔥🔥 id:\(id)")
//}
//
//checking("User123") // "checking 🔥🔥🔥 id:User123"


// blocked User: User000

let checking = { (id: String) -> Bool in
  if id == "User000" {
        return false
    }

    return true
}

let isValid = checking("User123") // true
// let isValid = checking("User000") // false


func validate(id: String, checking: (String) -> Bool) -> Bool {
    // Some Preparation work here..
    print("Validation 준비중...")
    let isValid = checking(id)
    return isValid
}


let validationResult = validate(id: "User002", checking: checking) // true


// return 이 없는 클로져의 경우 "-> Void" 통해서 반환시키는 것이 없음을 표시함

let printHello = {
    print("Hello Swift")
}

func doSomeClosure(_ action: () -> Void) {
    action()
}

doSomeClosure(printHello)


//let validationResult2 = validate(id: "User001", checking: { (id: String) in
//    if id == "User000" {
//          return false
//      }
//
//      return true
//})
//
//
//doSomeClosure({
//    print("Hello Swift")
//})

// 긴것을
let validationResult2 = validate(id: "User001", checking: { (id: String) in
    if id == "User000" {
          return false
      }

      return true
})


// 중간 단계
let validationResult3 = validate(id: "User001") { id in
    let isValid = id != "User000"
    return isValid
}


// 짧게
let validationResult4 = validate(id: "User002") { $0 != "User000" }
