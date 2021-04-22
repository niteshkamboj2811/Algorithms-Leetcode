class Solution:
    def uncommonFromSentences(self, A: str, B: str) -> List[str]:
        a = A.split()
        b = B.split()
        new = []
        for word in a:
            if a.count(word)  > 1:
                pass
            elif word not in b:
                new.append(word)
        
        for word in b:
            if b.count(word)  > 1:
                pass
            elif word not in a:
                new.append(word)
        
        return new