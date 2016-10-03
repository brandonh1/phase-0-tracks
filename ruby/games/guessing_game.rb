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

  def letters_guessed(letter)
    if @guessed_letters.include? letter
      return @count
    else
      @guessed_letters << letter
      @count += 1
    end
  end

  def right_or_wrong(letter,guess)
    index = 0
    if !guess.include? letter
      print
    else
      guess.each do |i|
        if letter == i
          @list[index] = letter
        end
        index += 1
      end
    end
  end


  def print
     puts guessed = @list.join(" ")
  end

end

word = Word_game.new(6)
word.print
guess = word.take_word("strirg")
word.right_or_wrong("r",guess)
word.print
word.right_or_wrong("s",guess)
word.print


