require_relative 'guessing_game'

describe Word_game do
  let(:word_game) {Word_game.new("hi")}


  it "counts how many letters are guessed and stores into an array" do
    expect(word_game.letters_guessed("a")).to eq 1
  end

  it "checks if the guess is correct or not" do
    expect(word_game.right_or_wrong("e")).to eq "_ _"
  end

  it "checks if user guessed the word" do
    expect(word_game.game_over).to eq false
  end

  it "prints out the progress made" do
    expect(word_game.print).to eq "_ _"
  end

  it "prints letters guessed" do
    word_game.letters_guessed("a")
    expect(word_game.print_letters_guessed).to eq "Letters guessed so far: #{word_game.guessed_letters}"
  end

end