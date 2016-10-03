class Word_game 



  def initialize(word_length)
    @list = []
    word_length.times {@list << "_"}

  end

  def print
     puts guessed = @list.join(" ")
  end

end

word = Word_game.new(5)
word.print
