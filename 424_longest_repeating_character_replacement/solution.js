const characterReplacement = function (s, k) {
  const freq = {}
  let left = 0
  let result = -1

  for (let right = 0; right <= s.length - 1; right++) {
    freq[s[right]] = (freq[s[right]] || 0) + 1

    const maxFreq = Math.max(...Object.values(freq))
    if (right - left + 1 - maxFreq <= k) {
      if (right - left + 1 > result) {
        result = right - left + 1
      }
    } else {
      freq[s[left]] -= 1
      left += 1
    }
  }
  return result
}

console.log(characterReplacement('AABABBA', 1))
