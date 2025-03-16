def wrap_back(prev, cur)
  if prev >= 'a'.ord && prev <= 'z'.ord && cur > 'z'.ord
    'a'.ord + (cur % 'z'.ord) - 1
  elsif prev >= 'A'.ord && prev <= 'Z'.ord && cur > 'Z'.ord
    'A'.ord + (cur % 'Z'.ord) - 1
  else
    cur
  end
end

def caesar_cypher(string, num)
  new_string = ''
  string.each_char do |char|
    if char.match?(/[[:alpha:]]/)
      encrypted_char = char.ord + num
      encrypted_char = wrap_back(char.ord, encrypted_char)
      new_string += encrypted_char.chr
    else
      new_string += char
    end
  end
  new_string
end

puts caesar_cypher('wocao coi', 5)

puts caesar_cypher('What a string!', 5)
