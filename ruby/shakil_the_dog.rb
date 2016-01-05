# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).
 
# You'll probably want to write other methods, but this 
# encapsulates the core dog logic
def shakil_the_dog
  here = true

  while here
    puts "Say something. "
    input = gets.chomp
    input.downcase!

    case input

    when "woof"
      3.times { puts "WOOF" }
    when "meow"
      5.times { puts "woof" }
    when "shakil stop"
      puts "peaceful"
    when /treat/
      puts "here we go"
    when "go away"
      here = false
    else
      puts "woof"
    end

  end

end
 
# Run our method
shakil_the_dog
