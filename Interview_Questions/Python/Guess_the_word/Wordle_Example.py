# """
# This is Master's API interface.
# You should not implement it, or speculate about its implementation
# """
# class Master:
#     def guess(self, word: str) -> int:

class Solution:
    def match(self, w1, w2):
        return sum(a == b for (a, b) in zip(w1, w2))
    
    def findSecretWord(self, wordlist: List[str], master: 'Master') -> None:
        x = 0
        # since we have only 6 guesses
        while x < 6:
          # count how many times a char appear at each pos
            cnt = [Counter(w[i] for w in wordlist) for i in range(6)]
          # make the guess based on the highest frequency for each pos
            guess = max(wordlist, key = lambda w: sum(cnt[i][c] for i, c in enumerate(w)))
          # get back how manny matches we have 
            x = master.guess(guess)
          # make up the new wordlist based on the matches we have 
            wordlist = [w for w in wordlist if self.match(w, guess) == x] 
            
'''Runtime: 36 ms, faster than 80.27% of Python3 online submissions for Guess the Word.
Memory Usage: 13.9 MB, less than 96.25% of Python3 online submissions for Guess the Word.'''        
