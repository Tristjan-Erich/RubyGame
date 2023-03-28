# Generate a random number between 1 and 100
number_to_guess = rand(1..100)

# Initialize variables for the guess and the number of guesses
guess = 0
num_guesses = 0

# Loop until the player guesses the number
until guess == number_to_guess
  # Ask the player to guess a number
  puts "Guess a number between 1 and 100:"
  guess = gets.chomp.to_i

  # Increment the number of guesses
  num_guesses += 1

  # Check if the guess is higher or lower than the number to guess
  if guess < number_to_guess
    puts "The number is higher. Guess again."
  elsif guess > number_to_guess
    puts "The number is lower. Guess again."
  else
    puts "You guessed it! The number was #{number_to_guess}."
    puts "It took you #{num_guesses} guesses."
  end
end
