population = ["cat","rock", "giraffe", "dinosaur", "ruby",
  	     "microphone", "gak", "cd", "glass", "spoon",
	     "pen", "card", "penguin", "stapler", "phone",
	     "lamp", "book", "microphone", "flute", "nail polish",
	     "schedule", "printer", "motherboard", "paper", "pencil",
	     "controller", "game", "keyboard", "mouse", "speaker"]

=begin
               __
              / _)
     _.----._/ /
    /codegurl /
 __/ (  | (  |
/__.-'|_|--|_|

=end


puts "Your population contains #{population.count} elements."  
puts "How many elements would you like for your sample?"

sample_size = gets.chomp.to_i

while sample_size > population.count || sample_size < 1
  puts "Your sample size must be between 0 and #{population.count}."
  puts "How many elements would you like for your sample?"
  sample_size = gets.chomp.to_i 
end

puts "Enter 1 if you would like a 'sample without replacement'.
Enter 2 if you would like a 'sample with replacement'"

replacement_factor = gets.chomp.to_i

until replacement_factor == 1 || replacement_factor == 2
puts "Enter 1 if you would like a 'sample without replacement.'
Enter 2 if you would like a 'sample with replacement.'"

replacement_factor = gets.chomp.to_i
end
	  
sample = population.sample(sample_size)

puts "Here is your sample:"
puts sample
puts
puts
if replacement_factor == 1
  new_population = population - sample
  puts "Because you selected 'sample without replacement', your population
  now contains #{new_population.count} elements."
  puts "Here is your new population:"
  puts new_population

else
  puts "Because you selected 'sample with replacement', your population
  still contains #{population.count} elements."
  puts "Here is your entire population:"
  puts population
end
