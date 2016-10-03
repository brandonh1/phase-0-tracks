class Word_game 



  def initialize(word_length)
    @list = []
    @guessed_letters = []
    @count = 0
    word_length.times {@list << "_"}

  end

  def take_word(word)
    word = word.split("")
  end

  def limit_reached(guesses,limit)
    if gusses == limit
      true
    else
      false
    end
  end

  def words_guessed(letter)
    if @guessed_letters.include? letter
      return @count
    else
      @guessed_letters << letter
      @count += 1
    end
  end

  def print
     puts guessed = @list.join(" ")
  end

end

word = Word_game.new(5)
word.print
guess = word.take_word("string")
word.words_guessed("s")
p word.words_guessed("s")
p word.words_guessed("a")
