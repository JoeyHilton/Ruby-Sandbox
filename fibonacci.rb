puts "Fibonacci of 36 is:"

start = Time.now

$fibno = [0,1]

def fib(n)

return n if $fibno.include? n

($fibno[n-1] ||= fib(n-1)) + ($fibno[n-2] ||= fib(n-2))

end
 
puts "Recursive Optimized: #{fib(36)}"

finish = Time.now

diff = (finish - start) * 1000

puts "#{diff} milliseconds"


start = Time.now

def fibRec(n)
    if n < 2
        n
    else
        fibRec(n-1) + fibRec(n-2)
    end
end
 
puts "Original Recursive: #{fibRec(36)}"

finish = Time.now

diff = finish - start

puts "#{diff} seconds"