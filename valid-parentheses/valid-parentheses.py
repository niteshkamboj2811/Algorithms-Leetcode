class Solution:
    def isValid(self, s: str) -> bool:
        stack = []
        dic = {"}":"{", "]":"[",")":"("}
    
        for chr in s:
            if chr in dic.values():
                stack.append(chr)
            else:
                if len(stack) > 0 and stack[-1] == dic[chr]:
                    stack.pop()
                else:
                    return False
        if len(stack) == 0:
            return True
        return False
