print "Enter your name: "
name = gets.chomp
puts "Hello, #{name}"

# 1. Define a method
def say_hi(name)
  "Hi, #{name}"
end

say_hi("Josh")

# 2. Assign variables
my_array = [5, 3, 7, 2]
my_array.sort
my_array

my_array = [5, 3, 7, 2]
my_array.sort!
my_array

# Looping through arrays and outputting each value to the screen
an_array = ['Hello', 'nurse', 'and', 'world']
an_array.each { |word| puts word }

# 3. Include a module
Math.sqrt(1282)
Time.now
Array.new(10, 'bee')

include Math
sqrt 64



