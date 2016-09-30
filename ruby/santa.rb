class Santa
  attr_reader :age, :ethnicity, :reindeer_ranking
  attr_accessor :gender

  def initialize(gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
      "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
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

#releases 0-3
=begin
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
=end

#release 4
gender_list = ["male", "female", "gender1", "gender2", "gender3", "N/A"]
ethnicities_list = ["asian", "white", "black", "pacific islander", "N/A"]
index = 0
while index < 1
  gender = gender_list.sample
  ethnicity = ethnicities_list.sample
  new_santa = Santa.new(gender, ethnicity)
  puts "Santa's gender: #{new_santa.gender}"
  puts "Santa's ethnicity: #{new_santa.ethnicity}"
  puts "Santa's age: #{new_santa.age}"
  puts "Santa's favorite reindeer: #{new_santa.reindeer_ranking.sample}"
  index += 1
end

