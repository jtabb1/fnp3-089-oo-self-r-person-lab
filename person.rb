# I used the official solutions to help me write some of the
#   methods below
# require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name
  attr_reader :happiness, :hygiene

  def happiness=(happiness)
    @happiness = happiness
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    @hygiene = 10 if hygiene > 10
    @hygiene = 0 if hygiene < 0
  end

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(pmt)
    self.bank_account += pmt
    "all about the benjamins"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi Felix! It's Stella. How are you?" if self.name == "Stella" && friend.name == "Felix"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def take_bath
    @hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      rtn = [-1, "blah blah partisan blah lobbyist"]
    when "weather"
      rtn = [ 1, "blah blah sun blah rain"]
    else
      rtn = [ 0, "blah blah blah rain"]
    end
    self.happiness += rtn[0]
    person.happiness += rtn[0]
    rtn[1]
  end

end

stella = Person.new("Stella")
felix = Person.new("Felix")

# binding.pry