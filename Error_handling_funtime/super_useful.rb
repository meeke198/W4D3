
class Error < StandardError;end

# PHASE 2
def convert_to_int(str)
  nums = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

  Integer(nums.index(str))
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include?(maybe_fruit)
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise Error.new("It's not a fruit!")
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  begin 
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue Error => e
    if maybe_fruit == "coffee"
      puts "Thanks for the coffee, but you need to give me a fruit"
      retry
    else
      puts e.message
    end
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end

