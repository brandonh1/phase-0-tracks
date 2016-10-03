class Word_game 
  attr_reader :guesses_made
  
  def initialize(answer)
    @list = []
    @guessed_letters = []
    @guesses_made = 0
    @answer = answer.split("")
    @answer.length.times {@list << "_"}
  end

#ended up not using this method. might refactor later
=begin
  def limit_reached(guesses,limit)
    if guesses == limit
      true
    else
      false
    end
  end
=end

  def letters_guessed(letter)
    if @guessed_letters.include? letter
      return @guesses_made
    else
      @guessed_letters << letter
      @guesses_made += 1
    end
  end

  #stores the letter into @list as soon as it matches.
  #i do this incase there are two of the same letters
  #using .index would return the first index.
  #doesn't return anything of value. using this as a side effect
  def right_or_wrong(letter)
    index = 0
    if !@answer.include? letter
      print_letters_guessed
    else
      @answer.each do |i|
        if letter == i
          @list[index] = letter
        end
        index += 1
      end
    end
    print
  end

  def game_over
    if !@list.include? "_"
      true
    else
      false
    end
  end

  def print
     puts guessed = @list.join(" ")
  end

  def print_letters_guessed
    puts "Letters guessed so far: #{@guessed_letters}"
  end

end
puts "Enter the word to be guessed."
answer = gets.chomp.downcase
word = Word_game.new(answer)
puts "Enter the amount of tries one can make."
tries = gets.chomp.to_i
count = 0
word.print

while count < tries
  puts "Guess a letter."
  guess = gets.chomp
  count = word.letters_guessed(guess)
  word.right_or_wrong(guess)
  puts "You have #{tries-word.guesses_made} guess left."
  if word.game_over
    break
  end
end

if word.game_over
  puts "Congratulations on winning in #{word.guesses_made} guesses."
else
  puts "The answer was #{answer}"
  puts "Don't quit your day job."
end