//https://leetcode.com/problems/roman-to-integer/
class Solution {
    func romanToInt(_ s: String) -> Int {
    var result = 0
    var lastChar: Character = " " // Инициализация переменной перед циклом
    
    for character in s {
        switch character {
            case "I":
                result += 1
            case "V":
                switch lastChar {
                    case "I":
                        result += 3
                    default:
                        result += 5
                }
            case "X":
                switch lastChar {
                    case "I":
                        result += 8
                    default:
                        result += 10
                }
            case "L":
                switch lastChar {
                    case "X":
                        result += 30
                    default:
                        result += 50
                }
            case "C":
                switch lastChar {
                    case "X":
                        result += 80
                    default:
                        result += 100
                }
            case "D":
                switch lastChar {
                    case "C":
                        result += 300
                    default:
                        result += 500
                }
            case "M":
                switch lastChar {
                    case "C":
                        result += 800
                    default:
                        result += 1000
                }
            default:
                break
        }
        lastChar = character
    }
    return result
}

}
