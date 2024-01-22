class Solution:
    def characterReplacement(self, s: str, k: int) -> int:
        freq = {}
        left = 0
        result = -1

        for right in range(len(s)):
            freq[s[right]] = freq.get(s[right], 0) + 1

            if right - left + 1 - max(freq.values()) <= k:
                result = max(result, right - left + 1)
            else:
                freq[s[left]] -= 1
                left += 1
        
        return result

print(Solution().characterReplacement("ABAB", 2))