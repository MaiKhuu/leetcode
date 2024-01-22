package main

import "fmt"

func main() {
	fmt.Println(characterReplacement("ABAB", 2)) // 4
}

func maxValue(m map[byte]int) int {
	result := -1
	for _, v := range m {
		if v > result {
			result = v
		}
	}
	return result
}

func characterReplacement(s string, k int) int {
	result := -1

	freq := map[byte]int{}
	left := 0

	for right := 0; right <= len(s)-1; right++ {
		_, found := freq[s[right]]

		if found {
			freq[s[right]] += 1
		} else {
			freq[s[right]] = 1
		}

		if right-left+1-maxValue(freq) <= k {
			if (right - left + 1) > result {
				result = right - left + 1
			}
		} else {
			freq[s[left]] -= 1
			left += 1
		}
	}

	return result
}
