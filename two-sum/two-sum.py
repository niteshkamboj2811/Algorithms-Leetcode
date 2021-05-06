class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        
        dic = dict()
        
        for index, num in enumerate(nums):
            diff = target - num
            
            if diff in dic:
                return [dic[diff], index]
            
            else:
                dic[num] = index