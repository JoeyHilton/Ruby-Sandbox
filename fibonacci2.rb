puts "Fibonacci of 1000 is:"

start = Time.now

def fibonacci(n)
    previous = -1
    result = 1
    i = 0
    while i <= n
      sum = result + previous
      previous = result
      result = sum
      i += 1
    end
    return result
end
 
puts "Non recursive: #{fibonacci(1000)}"

finish = Time.now

diff = (finish - start) * 1000

puts "#{diff} milliseconds"


start = Time.now

$fibno = [0,1]

def fib(n)

return n if $fibno.include? n

($fibno[n-1] ||= fib(n-1)) + ($fibno[n-2] ||= fib(n-2))

end
 
puts "Recursive: #{fib(1000)}"

finish = Time.now

diff = (finish - start) * 1000

puts "#{diff} milliseconds"