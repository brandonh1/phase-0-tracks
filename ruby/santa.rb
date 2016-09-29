class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
      "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age = @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

end

santa1 = Santa.new("a","b")
p santa1
santa1.speak
santa1.eat_milk_and_cookies("oatmeal raisin")
santa1.celebrate_birthday
p santa1.age
p santa1.ethnicity
p santa1.gender = "gender changed"


santa1.get_mad_at("Vixen")

p santa1
