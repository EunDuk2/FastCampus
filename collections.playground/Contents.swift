import UIKit

/// array
let yoo = "유재석"
let ji = "지석진"
let ha = "하하"
let so = "전소민"
let song = "송지효"
let kim = "김종국"

let runningMans = [yoo, ji, ha, so, song, kim]

runningMans[0]
runningMans[1]
runningMans[5]

// 비어 있는 배열 초기화
var emptyArr: [Int] = [] // [Int]()로도 표현


/// dictionary
// Dictionary (Key: Value)
let languageCode: [String: String] = [
    "한국": "ko",
    "미국": "en",
    "일본": "ja",
]

languageCode["한국"] // "ko"
languageCode["베트남"] // nil

// 비어 있는 딕셔너리 초기화
var emptyDic: [String: Any] = [:] // [String: Any]()로도 표현


/// set - 순서 상관없고 중복 방지
var primes: Set<Int> = [2, 3, 5, 7]

// 중복 데이터 넣으려고 시도하면, 중복된 것 알아서 무시됨
var evens = Set<Int>([2, 4, 6, 8, 2, 4])

var emptySet: Set<Int> = []



/// tuple - 여러 데이터를 하나의 값으로 표현, 세부 데이터 접근시, 포지션 또는 이름으로 접근 가능
var phone = (os:"iOS", model: "iPhone13")

phone.0 // "iOS"
phone.os // "iOS"

var rawPhone = ("iOS", "iPhone13") // 얘는 순서로만 접근 가능


/// enum 열거형 - 서로 관계있는 값들을 모아서 표현한 것, 특정 타입들을 표시할 때 사용하기 좋음
// 요일을 enum으로
enum WeekDay {
    case mon
    case tue
    case wed
    case thu
    case fri
}

var today: WeekDay = .mon

// 미디어타입을 enum으로
//enum MediaType {
//    case audio
//    case video
//}
//
//var mediaType: MediaType = .audio


// 위에서 만들어본 타입에, 파일 확장자도 문자열로 받을 수 있게 수정

enum MediaType {
    case audio(String)
    case video(String)
}

var mp3: MediaType = .audio("mp3")
var h264: MediaType = .video("h264")

// enum을 표시할 때 value를 할당해서 표시해야할 때도 있음
enum MasterLevel: Int {
    case beginner
    case intermediate
    case professional
}

let pro = MasterLevel(rawValue: 2)
let otherLevel = MasterLevel(rawValue: 5) // -> nil

enum Direction: String {
    case up
    case down = "ddd"
}

let up = Direction(rawValue: "up")
let otherDirection = Direction(rawValue: "left") // -> nil
