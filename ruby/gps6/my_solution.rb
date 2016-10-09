# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#references a file relative to the directory
require_relative 'state_data.rb'

class VirusPredictor

  # Initialize method takes in 3 arguments/parameters to be assigned to instance variables
  # Creates an instance of the class 

  #calls the remaining methods below

  def virus_effects(population_density,population,state)
    predicted_deaths(population_density, population, state)
    speed_of_spread(population_density, state)
  end

  #NEW FEATURE
    #collect state names, their populations and population densities
    #use each method for STATE hash to print out the above arguments
    #call the virus_effects method on each state

  def full_report(state_data)
    state_data.each do |state,data|
      virus_effects(data[:population_density], data[:population], state)
    end

  end 

  #private methods only called be within the class, cannot be called outside of the class
  private

  #Predicting the amount of casualties based on the population density and prints the UI how many deaths per state
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end

  #determining how fast the disease will spread based on pop. density
  #has a print statement that tells user the results 
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

new_state = VirusPredictor.new
new_state.full_report(STATE_DATA)


#reflect
=begin 
1. => is used for strings and varirables. : does not work if you try a string

2. require loads the content of that file into the current file require relative references 
a file relative to the directory. 

3. you can iterate through a hash by using .each or .map

4. we didnt need the @ because we removed all the instance variables

5. I got a better understanding of how to fix some bugs when we implemented a method to print
out all the states inside the class.

=end
