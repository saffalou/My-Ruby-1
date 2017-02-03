# Get My Number Game
# Written by: Paul Seaman

puts "Welcome to 'Get My Number!'"
#Get the players name and greet them
print "What's your name? "
input = gets
name=input.chomp
puts "Welcome, #{name} !"
#Store a random number for the player to guess
puts "I've got a random number between 1 and 100." 
puts "Can you guess it? You can have 10 attempts"
#input = gets
#Store a random number for the player to guess
target = rand(100) + 1
#Now we create a variable to keep track of number of guesses
num_guesses = 0
#Track whether the player has guessed correctly
guessed_it = false
until num_guesses == 10 || guessed_it
puts "You've got #{10 - num_guesses} guesses left"
print "Make a guess: "
guess = gets.to_i
num_guesses += 1
#Compare the guess to the target
#Print the appropriate message
if guess < target
puts "Oops, your guess was too low"
elsif guess > target
puts "Oops, your guess was too high"
elsif guess == target
puts "Hey #{name}"
puts "Awesome work, you guessed my number in #{num_guesses} guesses!"
guessed_it = true
end
end
# If player ran out of turns tell them what the number was
unless guessed_it
puts "Sorry, you didn't get my number. It was #{target}."
end

