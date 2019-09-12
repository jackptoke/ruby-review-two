# You may NOT use Google. These questions are just to test where you are at. Get through as many of these as you can. If you don’t get through all of them it’s ok - they are designed to take longer than the available time. If you can’t remember a bit of code, write the pseudo-code that represents what you would write your Ruby code.

# 1. What is a variable?

# 2. What Ruby method can you use to make a loop from an array?

# 3. In Ruby, what are booleans?

# 4. How do classes relate to objects?

# 5. What is an instance variable?

# 6. Choose an everyday item (cup, computer, person) and give it two instance variables (which will be attributes), and one method (to describe a function of the object). Code the initialize method in full (for these attributes only), and the definition line of the instance method (but do not code the entire method).

# 7. What is handy about using gems in Ruby?

# 8. Define a class called fish, and leave it empty.

# 9. How would you use that class to make three fish objects?

# 10. Add two attributes to your fish class, name and species, and make them accessible for reading and writing.

# 11. 

# a. Create one fish object and store it in a variable, and 

# b. on a second line, give that fish object’s name attribute the value of ‘Fred’ (assume you have access).

# 12. Define a hash called ‘student’. This hash should have two keys, one called name, and the other called age, and assign a string to the name key, and an integer to the age key. 

# 13. Write a Ruby method that takes three arguments and returns the sum (total) of those three arguments.

# 14. Write a Ruby method that takes an array and a string as arguments, and returns true if the string is in the array, and false if it is not.

# 15. Write a method that takes one argument, a number, and that returns true if the number is divisible by three, and false otherwise. 

# 16. You must use your previous method in this next question. Write another method that takes an array (of numbers) as an argument. This method will use your first method to return two arrays (within one array - an array of arrays). The first array contains the numbers that are divisible by 3, and the other contains the rest of the numbers. For example, if you pass the second method the array [9, 4, 3, 5, 30, 2, 8] it would return [[9, 3, 30],[4, 5, 2, 8]].# You may NOT use Google. These questions are just to test where you are at. Get through as many of these as you can. If you don’t get through all of them it’s ok - they are designed to take longer than the available time. If you can’t remember a bit of code, write the pseudo-code that represents what you would write your Ruby code.

# 1. What is a variable?
Ans: A variable is a block of memory with a name for storing data.

# 2. What Ruby method can you use to make a loop from an array?
Ans: While, until, for, each, each_with_index, 

# 3. In Ruby, what are booleans?
Ans: a data type which signify logic and the possible values are: true or false

# 4. How do classes relate to objects?
Ans: A class is a representation of real world object, with attributes and methods (what the class can do).
     An object is an instance of a class.

# 5. What is an instance variable?
Ans: An instance variable is when an object of a class is being put in existence, created or born and it has a name.

# 6. Choose an everyday item (cup, computer, person) and give it two instance variables (which will be attributes), and one method (to describe a function of the object). Code the initialize method in full (for these attributes only), and the definition line of the instance method (but do not code the entire method).
Ans:
class Cup
  def initialize(height, radius, colour, material, cost, rrp)
    @height = height
    @radius = radius
    @colour = colour 
    @material = material # ceramic, glass, plastic etc
    @cost = cost
    @rrp = rrp #retail price
  end

  def to_s
    return "Cup: #{@material}, #{@colour}, #{@height}, #{@radius}, #{@cost}, #{rrp}"
  end
end

# 7. What is handy about using gems in Ruby?
Ans: It helps avoid re-inventing the wheel and allow us to quickly have access to the work of others.

# 8. Define a class called fish, and leave it empty.
Ans:
class Fish
  def initialize()
  end
end

# 9. How would you use that class to make three fish objects?
fish1 = Fish.new
fish2 = Fish.new
fish3 = Fish.new

# 10. Add two attributes to your fish class, name and species, and make them accessible for reading and writing.
Ans:
class Fish
  attr_accessor :name, :species
  def initialize(name, species)
    @name = name
    @species = species
  end
end
# 11. 

# a. Create one fish object and store it in a variable, and 
fish = Fish("Electric Eel", "swordfish")

# b. on a second line, give that fish object’s name attribute the value of ‘Fred’ (assume you have access).
fish.name = "Fred"

# 12. Define a hash called ‘student’. This hash should have two keys, one called name, and the other called age, and assign a string to the name key, and an integer to the age key. 
student = {name: "Jack", age: 36}

# 13. Write a Ruby method that takes three arguments and returns the sum (total) of those three arguments.
def sum(num1, num2, num3)
  return num1 + num2 + num3
end

# 14. Write a Ruby method that takes an array and a string as arguments, and returns true if the string is in the array, and false if it is not.
def find(names, name)
  return names.include?(name)
end

# 15. Write a method that takes one argument, a number, and that returns true if the number is divisible by three, and false otherwise. 
def divisible_by_three?(num)
  (num%3) == 0 ? true : false
end
# 16. You must use your previous method in this next question. Write another method that takes an array (of numbers) as an argument. This method will use your first method to return two arrays (within one array - an array of arrays). The first array contains the numbers that are divisible by 3, and the other contains the rest of the numbers. For example, if you pass the second method the array [9, 4, 3, 5, 30, 2, 8] it would return [[9, 3, 30],[4, 5, 2, 8]].

def split_divisible_3(numbers)
  non_div_3_numbers = numbers.reject {|n| divisible_by_three?(n)}
  div_3_numbers = numbers.select {|n| divisible_by_three?(n)}
  return [div_3_numbers, non_div_3_numbers]
end