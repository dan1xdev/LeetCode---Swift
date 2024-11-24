class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let xStr = String(x) // Преобразуем число в строку
        return xStr == String(xStr.reversed()) // Сравниваем строку с её обратной версией
    }
}
