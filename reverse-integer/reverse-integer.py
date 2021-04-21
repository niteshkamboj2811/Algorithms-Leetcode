class Solution:
    def reverse(self, x: int) -> int:
        if x > 0:
            result = int(str(x)[::-1])
        if x <= 0:
            result = -1 * int(str(x*-1)[::-1]) 
        
        minresult = -2**31
        maxresult = 2**31 - 1
        
        if result in range(minresult, maxresult):
            return result
        return 0