class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(woof_count)
    until woof_count == 0
      puts "Woof!"
      woof_count -= 1
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    puts "#{human_years*7}"
  end

  def jump(jump_count)
    puts "jumped #{jump_count} times."
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

spot = Puppy.new
str = "ball"
spot.fetch(str)
spot.speak(5)
spot.roll_over
spot.dog_years(2)
spot.jump(3)

class Archer
    
  def initialize
    puts "Initializing new dancer instance..."  
  end

  def shoot
    puts "Direct hit!"
  end

  

end

archers_guild = []

index = 0
until index == 5
    archers_guild << Archer.new
    index += 1
end

archers_guild.each do |archer|
  archer.shoot
end
