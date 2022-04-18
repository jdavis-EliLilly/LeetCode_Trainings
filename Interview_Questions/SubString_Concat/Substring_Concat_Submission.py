class Solution:
    def findSubstring(self, s: str, words: List[str]) -> List[int]:
        wordsCount = Counter(words)
        wordLen = len(words[0])
        allCount = len(words)
        validLen = wordLen * allCount
        res = []
        
        def slidingWindow(start):
            seenCount = 0
            wordsSeen = Counter()
            l, r = start, start
            
            while r < len(s):
                nextWord = s[r: r + wordLen]
                if nextWord not in words:
                    seenCount = 0
                    wordsSeen = Counter()
                    l, r = r + wordLen, r + wordLen
                    continue
                
                seenCount += 1
                wordsSeen[nextWord] += 1
                r += wordLen
                
                while wordsSeen[nextWord] > wordsCount[nextWord]:
                    firstWord = s[l: l + wordLen]
                    seenCount -= 1
                    wordsSeen[firstWord] -= 1
                    l += wordLen
                
                if seenCount == allCount:
                    res.append(l)
                    firstWord = s[l: l + wordLen]
                    seenCount -= 1
                    wordsSeen[firstWord] -= 1
                    l += wordLen
                    
        for i in range(wordLen):
            slidingWindow(i)
        return res
