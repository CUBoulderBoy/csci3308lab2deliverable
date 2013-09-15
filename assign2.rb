#Part 1A - Desserts
class Dessert
    def initialize(name, calories)
        @name = name
        @calories = calories
    end

    def healthy?
        @calories < 200
    end

    def delicious?
        true
    end

    def calories=(calories)
    	@calories = calories
    end

    def calories
    	@calories
    end

    def new_name=(name)
    	@name = name
    end

    def name?
    	@name
    end

    def dessert_info
    	puts "Dessert Name: #{self.name?}"
		puts "Dessert Calories: #{self.calories}"
		puts "Dessert Healthy: #{self.healthy?}"
		puts "Dessert Delicious: #{self.delicious?}"
    end
end

=begin
#Dessert Class Testing
brownie = Dessert.new("Brownie", 500)
puts "Dessert Name: #{brownie.name?}"
puts "Dessert Calories: #{brownie.calories}"
puts "Dessert Healthy: #{brownie.healthy?}"
puts "Dessert Delicious: #{brownie.delicious?}"
brownie.dessert_info

cookie = Dessert.new("Cookie", 150)
cookie.dessert_info
cookie.new_name = "Cheesecake"
cookie.dessert_info
cookie.calories = 750
cookie.dessert_info
=end

#Part 1B - JellyBean
class JellyBean < Dessert
    def initialize(name, calories, flavor)
        @name = name
        @calories = calories
        @flavor = flavor
    end

    def delicious?
        @flavor.downcase != "black licorice"
    end

    def flavor=(flavor)
    	@flavor = flavor
    end

    def flavor
    	@flavor
    end

    def jellybean_info
    	self.class.superclass.instance_method(:dessert_info).bind(self).call
    	puts "JellyBean flavor: #{flavor}"
    end
end

=begin
#JellyBean Class Testing
popcorn = JellyBean.new("JellyBean", 100, "Popcorn")
puts "JellyBean flavor: #{popcorn.flavor}"
popcorn.jellybean_info
popcorn.flavor = "Black Licorice"
popcorn.jellybean_info
popcorn.calories = 212
popcorn.jellybean_info
=end

#Part 2 - OOP
class Class
    def attr_accessor_with_history(attr_name)
        attr_name = attr_name.to_s
        attr_reader attr_name
        attr_reader attr_name + "_history"
        class_eval %Q{
                        def attr-with-history(attr_name)
                            
                        end
                    }
    end
end

class Foo
    attr_accessor_with_history :bar
end

#Class Class Testing
f = Foo.new
f.bar = 1
#f.bar = 2
#f.bar_history # => if your code works, should be [nil, 1, 2]