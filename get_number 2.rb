# Get My Number Game
# Written by: you!

#Variables
# name - name of gamer
# target - random number
# num_guesses - number of attemps
# guessed_it - a sign of the continuation game
# guess - enter the numbers

#Welcome
puts "Welcome to 'Get My Number'"

#Getting the player's name and displaying the greeting
print "What's your name? "
input = gets
name = input.chomp
puts "Walcome #{name}!"

#Saving a random number
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

#Tracking the number of attemps
num_guesses = 0

#A sign of the continuation game
guessed_it = false

#Cicle
until num_guesses == 10 || guessed_it

	#Add numbers of guess
	num_guesses += 1
	print "Guess number #{num_guesses}. "

	#Enter the number
	puts "If You give up dial 101."
	print "Make a guess: "
	guess = gets.to_i

	#Comparison of the entered number with the hidden one
	#and output of the corresponding message
	if guess == 101
		puts "Secret number is #{target}, but nobody know it! Tss!"
	elsif guess > target
		puts "Opps! Your guess was HIGH!"
	elsif guess < target
		puts "Opps! Your guess was LOW!"
	elsif guess == target
		puts "Guod job, #{name}!"
		puts "You guess my number in #{num_guesses} guesses!"
		guessed_it = true
	end
end

#If the attempts left, tell the hidden number
unless guessed_it
	puts "Sorry... You didn't get my number. It was #{target}."
end

