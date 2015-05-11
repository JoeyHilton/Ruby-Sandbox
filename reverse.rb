def bkwds(phrase)
  phrase.split('')
end

array_phrase = bkwds("This is just Another String For You to Test With")

index = array_phrase.length - 1

new_array = []

p array_phrase

while index >= 0
  new_array << array_phrase[index]
  index -=1
end

capitalized = new_array.join("").split(" ").each_with_index do |word, i|
  word.capitalize! if i.even?
end

p capitalized.join(" ")
