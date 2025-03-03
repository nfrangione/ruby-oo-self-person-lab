# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :hygiene, :happiness, :bank_account
    def initialize (name, happiness=8, hygiene=8, bank_account=25)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    def happiness
        if (@happiness < 0)
            @happiness = 0
        elsif (@happiness > 10)
            @happiness = 10
        else 
            @happiness
        end
    end
    def hygiene 
        if (@hygiene < 0)
            @hygiene = 0
        elsif (@hygiene > 10)
            @hygiene = 10
        else 
            @hygiene
        end
    end
    def happy?
        @happiness > 7 ? true:false
    end
    def clean?
        @hygiene > 7 ? true:false
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        if (topic == "politics")
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif (topic == "weather")
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

binding.pry