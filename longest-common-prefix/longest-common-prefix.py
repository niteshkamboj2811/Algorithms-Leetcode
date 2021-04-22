class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if len(strs) == 0:
            return ""
    
        minlength = len(min(strs, key=len))
    
        new = ""
        i = 0
        while i < minlength:
            toFind = strs[0][i]
            for j in range(1, len(strs)):
                if strs[j][i] != toFind:
                    return new
                
            new+=toFind
            i += 1
        return new