# 1. Write a method that accepts a word and returns true if the word is a palindrome, 
# and false if it is not.

def palindrome(word)
  if word == word.reverse
    puts true
  else
    puts false
  end
end

# 2. Write a method that accepts a sentence and returns the same sentence but with every other word reversed. 
# I.E. ('This is a sentence' becomes 'This si a ecnetnes')
# def reverse_words(str)
#   words = str.split(' ')
#   reverse_str = []
 
#   words.length.times do |i|
#     reverse_str[i] = words[i].reverse
#   end
    
 def reverse
  string / 2
  { |i| i 1, -i -1, -i -1, i}

#   return reverse_str.join(" ")
# end

def reverse_words(str)
  str.split.each_with_index.map {|w,i| i.odd? ? w.reverse : w}.join(' ')  
end

# 3. Write a method that accepts a word and returns the number of vowels in that word.

def count_vowels(word)
  word.scan(/[aeiou]/).count
end

count_vowels("hello")

# 4. You're given an array with the numbers 1-10. Write a method that counts how many numbers are odd.
ary = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
def odd_num_count(ary)
  ary.count{|x|x%2!=0}
end


# 5. Suppose I have the following Array of tuples ( [['a',1], ['b',2], ['c',3]] ).     How can I convert this to a Hash?

array = [['a',1], ['b',2], ['c',3]]

hash = Hash[array.map {|key, value| [key, value]}]
puts "hash: #{hash.inspect}"

[['a',1], ['b',2], ['c',3]].to_h # most efficient and up to date

# 6. convert array to hash

# I have this array: array = ["Adult", "Family", "Single", "Child"]
# I want output to look like this: hash = {0 => 'Adult', 1 => 'Family', 2 => 'Single', 3 => 'Child'}

Hash[array.each_with_index.map { |value, index| [index, value] }]

