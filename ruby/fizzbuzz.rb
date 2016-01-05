def fizzbuzz(num1, num2)
  num1.upto(num2) do |i|
    puts fb_logic(i)
  end
end

def fb_logic(num)
  result = ''
  result << 'Fizz' if num % 3 == 0
  result << 'Buzz' if num % 5 == 0
  if result.empty?
    num
  else
    result
  end
  # above if-else can be like this, same thing!
  # result.empty? ? num: output
end

fizzbuzz(2,20)
