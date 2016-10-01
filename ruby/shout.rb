#release 1
=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end

puts Shout.yell_angrily("yell")
=end

#release 3

module Shout
  def trespassing
    puts "HEY WHAT ARE YOU DOING HERE? YOU NEED TO LEAVE!!"
  end
end

class Security
  include Shout
end

class Police
  include Shout
end

guard = Security.new
guard.trespassing

officer = Police.new
officer.trespassing