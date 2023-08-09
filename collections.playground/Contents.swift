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
