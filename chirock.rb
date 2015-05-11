def game

odd_even = [1, 2].sample
odd_even_s = ["odd", "even"]

# computer randomly chooses 2 numbers between 0 and 5
  r2d2_num = [0, 1, 2, 3, 4, 5].sample
  c3po_num = [0, 1, 2, 3, 4, 5].sample


  sum = r2d2_num + c3po_num
   
   if sum.odd? == odd_even.odd?
    # Associating the string array to the integer array
    puts "C3PO chose #{odd_even_s[odd_even-1]} and #{c3po_num} while R2d2 chose #{r2d2_num}"
    puts "C3PO Wins"
    @c3po_score += 1
    puts "C3PO #{@c3po_score} vs. R2D2 #{@r2d2_score}"
    puts " "
   else
    puts "C3PO chose #{odd_even_s[odd_even-1]} and #{c3po_num} while R2d2 chose #{r2d2_num}"
    puts "R2D2 Wins"
    @r2d2_score += 1
    puts "C3PO #{@c3po_score} vs. R2D2 #{@r2d2_score}"
    puts " "
   end
end

# @ added because these are instance variables. Added to improve scope to within the method "game"
@r2d2_score = 0
@c3po_score = 0
10.times { game }

