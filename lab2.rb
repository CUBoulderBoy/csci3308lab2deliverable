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

    p1 = game[0][1].downcase
    p2 = game[1][1].downcase

    raise NoSuchStrategyError unless ((p1 == "r" || p1 == "s" || p1 == "p") && (p2 == "r" || p2 == "s" || p2 == "p"))

    if p1 == "r"
        if p2 == "s"
            puts "#{game[0][0]} would win since R > S"
        elsif p2 == "p"
            puts "#{game[1][0]} would win since R < P"
        else
            puts "Neither would win since R == R"
        end
    elsif p1 == "s"
        if p2 == "p"
            puts "#{game[0][0]} would win since S > P"
        elsif p2 == "r"
            puts "#{game[1][0]} would win since S < R"
        else
            puts "Neither would win since S == S"
        end
    else
        if p2 == "r"
            puts "#{game[0][0]} would win since P > R"
        elsif p2 == "s"
            puts "#{game[1][0]} would win since P < S"
        else
            puts "Neither would win since P == P"
        end
    end
end

=begin
Testing Part 3A
player1 = ["Paul", "S"]
player2 = ["Sam", "P"]
play_game = [player1, player2]
rps_game_winner(play_game)

player1 = ["Paul", "R"]
player2 = ["Sam", "r"]
play_game = [player1, player2]
rps_game_winner(play_game)

player1 = ["Paul", "p"]
player2 = ["Sam", "S"]
play_game = [player1, player2]
rps_game_winner(play_game)
=end


