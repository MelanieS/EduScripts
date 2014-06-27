puts "How many Fibonacci numbers would you like?"
n = gets.to_i
puts "Awesome! I'll get started on that right away!"
def fibonacci(n)
    array = []
    a,b = 0,1
    n.times do
        array << a
        a,b = b,a+b
    end
  puts "Here are your requested Fibonacci numbers:"
  puts array.to_s
end

fibonacci(n)
