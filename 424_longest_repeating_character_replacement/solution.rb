def character_replacement(str, k)
  freq = {}
  l = 0
  result = -Float::INFINITY

  for r in 0..str.length - 1 do 
    freq[str[r]] = (freq[str[r]] || 0) + 1
    max_freq = freq.values.max
    if r - l + 1 - max_freq <= k 
      result = [result, r - l + 1].max
    else
      freq[str[l]] -= 1
      l += 1
    end
  end
  
  result
end

p character_replacement("ABAB", 2) # 4
p character_replacement("ABAB", 4) # 4
p character_replacement("AABABBA", 1) # 4
p character_replacement("AABABBA", 2) # 5
p character_replacement("AABABBA", 3) # 7
p character_replacement("AABABBA", 0) # 2
p character_replacement("KRSCDCSONAJNHLBMDQGIFCPEKPOHQIHLTDIQGEKLRLCQNBOHNDQGHJPNDQPERNFSSSRDEQLFPCCCARFMDLHADJADAGNNSBNCJQOF", 4) #7
p character_replacement("ABCDEFFFABCDE", 4)