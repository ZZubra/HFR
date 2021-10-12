# Get My Number Game
# Written by: you!

#Оbjects analysis
#puts input.inspect
#p input
#puts name.inspect
#p name

#Determine all objects methods
#puts name.methods

#Determine objects class
#puts name.class

#Variables
# name - name of gamer
# target - random number
# num_guesses - number of attemps
# guessed_it - a sign of the cjntinuation game
# guess - enter the numbers

puts "Welcome to 'Get My Number'"

#Getting the player's name and displaying the greeting
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome #{name}!"

#Saving a random number
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1
puts "Top secert random number = #{target}"

#Tracking the number of attemps
num_guesses = 0

#A sign of the continuation game
guessed_it = false

#Cicle
until num_guesses == 10 || guessed_it
	#Enter the number
	print "Make a guess: "
	guess = gets.to_i

	#Add numbers of guess
	num_guesses += 1

	#Comparison of the entered number with the hidden one
	#and output of the corresponding message
	if guess < target
		puts "Oops! Your guess was LOW."
	elsif guess > target
		puts "Oops! Your guess was HIGH."
	elsif guess == target
		puts "Good job, #{name}!"
		puts "You guessed my number in #{num_guesses} guesses!" #Number of remaining attempts

		guessed_it = true
	end
end

#If the attempts left, tell the hidden number
unless guessed_it
	puts "Sorry... You didn't get my number. It was #{target}."
end

