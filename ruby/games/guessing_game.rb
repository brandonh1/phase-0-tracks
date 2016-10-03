class Word_game 
  def initialize(word_length)
    @list = []
    @guessed_letters = []
    @guesses_made = 0
    word_length.times {@list << "_"}
  end

  def take_word(word)
    word = word.split("")
  end

  def limit_reached(guesses,limit)
    if guesses == limit
      true
    else
      false
    end
  end

  def letters_guessed(letter)
    if @guessed_letters.include? letter
      return @guesses_made
    else
      @guessed_letters << letter
      @guesses_made += 1
    end
  end

  def right_or_wrong(letter,guess)
    index = 0
    if !guess.include? letter
      print_letters_guessed
    else
      guess.each do |i|
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
word = Word_game.new(answer.length)
answer = word.take_word(answer)
puts "Enter the amount of tries one can make."
tries = gets.chomp.to_i
count = 0
word.print

while count < tries
  puts "Guess a letter."
  guess = gets.chomp
  count = word.letters_guessed(guess)
  word.right_or_wrong(guess,answer)
  if word.game_over
    break
  end
end

if word.game_over
  puts "Congratulations on winning."
else
  puts "The answer was #{answer}"
  puts "Don't quit your day job."
end
