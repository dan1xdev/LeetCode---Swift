//https://leetcode.com/problems/two-sum/
class Solution{
    func twoSum(_ nums: [Int], _ target: Int) -> [Int]{
        var numbers = [Int: Int]()
        
        for (i, num) in nums.enumerated(){
            let value = target - num
            if let index = numbers[value]{
                return[index,i]
            }
        }
        return[]
    }
}
