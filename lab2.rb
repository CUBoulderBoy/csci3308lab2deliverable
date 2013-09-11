#Part1: Hello World
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end
#hello = HelloWorldClass.new("Chris Jordan")
#hello.sayHi

#Part 2A: Strings - Palindromes   
def palindrome?(string)
    string = string.gsub(/[^a-z]/i, '')
    string.downcase == string.downcase.reverse
end

#Testing Part 2A
#puts palindrome?("A man, a plan, a canal -- Panama")
#puts palindrome?("Madam, I'm Adam!")
#puts palindrome?("Abracadabra")

#Part 2B: Strings - Word Count
def count_words(string)
    string = string.downcase
    split_string = string.split(' ')
    
    word_hash = Hash.new
    word_hash.default = nil

    split_string.each do |s|
        s = s.gsub(/[^a-z]/, '')
        if word_hash[s]
            word_hash[s] = word_hash[s] + 1 
        else
            word_hash[s] = 1
        end
    end
    puts word_hash
end

#Testing Part 2B
#count_words("A man, a plan, a canal -- Panama")
#count_words "Doo bee doo bee doo"

#Part 3A: Rock Paper Scissors - 
class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    
end
