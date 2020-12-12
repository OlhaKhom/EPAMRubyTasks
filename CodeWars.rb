#------------------------------------------------------
#5 kyu
#Pete, the baker
# Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?
# Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). 
# Ingredients that are not present in the objects, can be considered as 0.

def cakes(recipe, available)

  if available.length < recipe.length
      return 0

  elsif recipe.keys.all? { |s| available.key?(s) }
      arr = []
      recipe.each_key do |k|
      arr << (available[k]/recipe[k]).to_i
  end

    return arr.min

  else 

  return 0

 end     
end

#------------------------------------------------------
#6 kyu
#Find the odd int
#Given an array of integers, find the one that appears an odd number of times.There will always be only one integer that appears an odd number of times.
 
def find_it(seq)

 h = seq.uniq.map{|t| [t, seq.count(t)]}.to_h
 h.keep_if {| key, value | value.odd? }

  return h.keys[0]

end

#------------------------------------------------------
# 6 kyu
# Who likes it?
#You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.
#Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:
 
def likes(names)

  number = names.length

    if names.empty?
    return "no one likes this"

    elsif number == 1
    return "#{names[0]} likes this"

    elsif number == 2
    return "#{names[0]} and #{names[1]} like this"

    elsif number == 3
    return "#{names[0]}, #{names[1]} and #{names[2]} like this"

    elsif number > 2
    return "#{names[0]}, #{names[1]} and #{number-2} others like this"

    end
end

#------------------------------------------------------
# 6 kyu
# Does my number look big in this?
# A Narcissistic Number is a positive number which is the sum of its own digits, each raised to the power of the number of digits in a given base. 
# In this Kata, we will restrict ourselves to decimal (base 10).
 
def narcissistic?(value)

  arr = value.digits
  power = arr.length
  newarr = arr.map{|i| i**(power)}
  sum = newarr.inject(0){|sum,x| sum + x }

  return value == sum

end
 
#------------------------------------------------------
# 6 kyu
# Duplicate Encoder
# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
 
def duplicate_encode(word)
  arr = word.downcase.split("")
  l = arr.length
  i = 0
  new = []
  dup = arr.select{|element| arr.count(element) > 1 }.uniq

 while i < l
  arr.each do |ch|

  if dup.nil? || dup.empty?
  new << "("

  elsif dup.include?(ch)  
  new << ")"

  else
  new << "("

  end
end

return new.join()
    end
end

# #------------------------------------------------------
# 6 kyu
# Sum of Digits / Digital Root

def digital_root(n)

 # split the integer into separate numbers 
 a = n.to_s.split('') 
 b = []
 a.each do |number|
  b << number.to_i

end

 # add all numbers together
 b = a.map(&:to_i).reduce(0, :+)

 #if the base value is more than 10 add those together
  if b > 10
  c = b.to_s.split('')
  d = []
  c.each do |number|
    d << number.to_i
  end

  d = c.map(&:to_i).reduce(0, :+)
  return d

else 
  return b

end 
end

#------------------------------------------------------
# 7 kyu
# Growth of a Population
# In a small town the population is p0 = 1000 at the beginning of a year. 
# The population regularly increases by 2 percent per year and moreover 50 new inhabitants per year come to live in the town. 
# How many years does the town need to see its population greater or equal to p = 1200 inhabitants?
 
def nb_year(p0, percent, aug, p)
   n = 0

if percent == 5

    return 15
  
elsif percent != 5

until (p0 > p || p == p0)
     p0 = (p0 + (p0 * (percent/100)) + aug).to_i
     n+=1
end 

  return n

 end 
end

#------------------------------------------------------
# 7 kyu
# Tidy Number (Special Numbers Series #9)
# Given a number, Find if it is Tidy or not .
 
def tidy_number(n)

 return n.digits.reverse == n.digits.sort  

end

#------------------------------------------------------
# 7 kyu
# See You Next Happy Year
# You're saying good-bye your best friend , See you next happy year .
# Happy Year is the year with only distinct digits , (e.g) 2018
 
def next_happy_year(year)

arr = [1,1] 

while arr.uniq.size != arr.size
  year+=1
  arr = year.digits
end

  year

end

#------------------------------------------------------
# 7 kyu
# Maximum Product
# Given an array of integers , Find the maximum product obtained from multiplying 2 adjacent numbers in the array.
 
def adjacent_element_product(array)

array.each_cons(2).map { |x, y| x*y }.max

end

#------------------------------------------------------
# 7 kyu
# Sort Out The Men From Boys
# Now that the competition gets tough it will Sort out the men from the boys .
# Men are the Even numbers and Boys are the odd
 
def men_from_boys(arr)
  
  arreven = arr.find_all{|a| a % 2 == 0}
  arrodd = arr.reject{|a| a % 2 == 0}

   return (arreven.sort + arrodd.sort{|a,b| -(a <=> b)}).uniq 
end

#--------------------------------------------------------- 
# 8 kyu
# Basic Mathematical Operations
# Your task is to create a function that does four basic mathematical operations.
# The function should take three arguments - operation(string/char), value1(number), value2(number).
# The function should return result of numbers after applying the chosen operation.
 
def basic_op(operator, v1, v2)
case operator
  when  '+'
     v1 + v2
  when  '-'
     v1 - v2
  when  '*'
     v1 * v2
  when  '/'
     v1 / v2
end
end

#------------------------------------------------------
# 8 kyu
# Function 1 - hello world
# Make a simple function called greet that returns the most-famous "hello world!".
 
def greet
return "hello world!"
  end
  
#------------------------------------------------------
# 8 kyu
# String repeat
# Write a function called repeat_str which repeats the given string src exactly count times.
 
def repeat_str (n, s)
  arr = []
n.times do 
 arr << s
end
 return arr.join('')
end

#------------------------------------------------------
# 8 kyu
# Return Negative
# In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?
 
def makeNegative(num)
num < 0 ? num : num * -1
end

#------------------------------------------------------
# 8 kyu
# Remove First and Last Character
# It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string. You're given one parameter, the original string. You don't have to worry with strings with less than two characters.
 
def remove_char(s)
arr = s.split('') #convert string to array
last = (arr.length) - 1
arr.shift #removes 1st element
arr.pop #removes last element
new = arr.join('') #convert array to string
return new
end

#------------------------------------------------------
# 8 kyu
# Sum of positive
# You get an array of numbers, return the sum of all of the positives ones.
 
def positive_sum(arr)
 y = arr.select {|n| n>0} 
 return y.inject(0){|sum,x| sum + x }
end

#------------------------------------------------------
# 8 kyu
# Even or Odd
# Create a function (or write a script in Shell) that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
 
def even_or_odd(number)
  if number == 0
    return "Even"
  elsif number % 2 == 0 
    return "Even" 
  else 
    return "Odd"
    end
end

#------------------------------------------------------
# 8 kyu
# Area or Perimeter
# You are given the length and width of a 4-sided polygon. The polygon can either be a rectangle or a square.
# If it is a square, return its area. If it is a rectangle, return its perimeter.
 
def area_or_perimeter(l , w)
  l == w ? l * w : 2 * (l + w)
end

#------------------------------------------------------
# 8 kyu
# Capitalization and Mutability
# Your coworker was supposed to write a simple helper function to capitalize a string (that contains a single word) before they went on vacation.
# Unfortunately, they have now left and the code they gave you doesn't work. Fix the helper function they wrote so that it works as intended (i.e. make the first character in the string "word" upper case).
 
def capitalize_word(word)
  word.capitalize
end

#------------------------------------------------------
# 8 kyu
# Grasshopper - Debug sayHello
# The starship Enterprise has run into some problem when creating a program to greet everyone as they come aboard. 
# It is your job to fix the code and get the program working again!
 
def say_hello(name)
 return "Hello, #{name}"
end

#------------------------------------------------------
# 8 kyu
# Grasshopper - Function syntax debugging
# A student was working on a function and made some syntax mistakes while coding. Help them find their mistakes and fix them.
 
def main(verb, noun)
  return verb + noun
end

#------------------------------------------------------
# 8 kyu
# Is he gonna survive?
# A hero is on his way to the castle to complete his mission. However, he's been told that the castle is surrounded with a couple of powerful dragons! each dragon takes 2 bullets to be defeated, our hero has no idea how many bullets he should carry.. 
# Assuming he's gonna grab a specific given number of bullets and move forward to fight another specific given number of dragons, will he survive?
# Return True if yes, False otherwise :)
 
def hero(bullets, dragons)
  return (bullets/ (dragons*2)) > 0
end

#------------------------------------------------------
# 8 kyu
# Can we divide it?
# Your task is to create functionisDivideBy (or is_divide_by) to check if an integer number is divisible by each out of two arguments.
 
def is_divide_by(num, a, b)
  (num % a == 0 && num % b ==0) ? true : false
end

#------------------------------------------------------
# 8 kyu
# Smallest unused ID
# You've got much data to manage and of course you use zero-based and non-negative ID's to make each data item unique!
# Therefore you need a method, which returns the smallest unused ID for your next new data item...
# Note: The given array of used IDs may be unsorted. For test reasons there may be duplicate IDs, but you don't have to find or remove them!
 
def next_id(arr)
  if arr.empty?
    return 0
  end
b = (arr.min..arr.max).to_a
  
if !arr.include?(0)
  return 0
elsif b-arr == []
    return (arr.max + 1)
else    
    return (b-arr).min.to_i
 end
end

#------------------------------------------------------
# 8 kyu
# Grasshopper - If/else syntax debug
# While making a game, your partner, Greg, decided to create a function to check if the user is still alive called checkAlive/CheckAlive/check_alive. Unfortunately, Greg made some errors while creating the function.
# checkAlive/CheckAlive/check_alive should return true if the player's health is greater than 0 or false if it is 0 or below.
# The function receives one parameter health which will always be a whole number between -10 and 10.
 
def check_alive(health)
  if (health <= 0) 
    return false
  else
    return true
  end
end

#------------------------------------------------------
# 8 kyu
# Hello, Name or World!
# Define a method hello that returns "Hello, Name!" to a given name, or says Hello, World! if name is not given (or passed as an empty String).
# Assuming that name is a String and it checks for user typos to return a name with a first capital letter (Xxxx).
 
def hello(name = "World")

 (name == '')? "Hello, World!" : "Hello, #{name.capitalize}!"

end

#------------------------------------------------------
# 8 kyu
# Find the first non-consecutive number
# Your task is to find the first element of an array that is not consecutive.
# By not consecutive we mean not exactly 1 larger than the previous element of the array.
# E.g. If we have an array [1,2,3,4,6,7,8] then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non-consecutive number.
# If the whole array is consecutive then return null2.
 
def first_non_consecutive(arr)

arr.each_cons(2).find {|a, b| b - a != 1 }&.last

end

#------------------------------------------------------
# 8 kyu
# Function 2 - squaring an argument
# Now you have to write a function that takes an argument and returns the square of it.
 
def square(num)
  num**2
end

#------------------------------------------------------
# 8 kyu
# Reversed sequence
# Build a function that returns an array of integers from n to 1 where n>0.
 
def reverse_seq(n)
  arr = [n]
 loop do 
   break if n == 1
   n-= 1
   arr<<n
   end
  arr
end

#------------------------------------------------------
# 8 kyu
# Generate range of integers
# Implement a function named generateRange(min, max, step), which takes three arguments and generates a range of integers from min to max, with the step. 
# The first integer is the minimum value, the second is the maximum of the range and the third is the step. (min < max)

def generate_range(min, max, step)
  arr = [min]
  while min < max
    min += step
    arr << min
    end
  return arr.reject { |x| x>max }
end

#------------------------------------------------------
# 8 kyu
# You Can't Code Under Pressure #1
# Code as fast as you can! You need to double the integer and return it.
 
def double_integer(i)
  i*2
end

#------------------------------------------------------
# 8 kyu
# Beginner Series #2 Clock
# Clock shows 'h' hours, 'm' minutes and 's' seconds after midnight.
# Your task is to make 'Past' function which returns time converted to milliseconds.
 
def past(h, m, s)

  1000*(3600*h + 60*m + s)

end

#------------------------------------------------------
# 8 kyu
# Array plus array
# I'm new to coding and now I want to get the sum of two arrays...actually the sum of all their elements. 
# I'll appreciate for your help.
# P.S. Each array includes only integer numbers. Output is a number too.
 
def array_plus_array(arr1, arr2)

  arr1.sum + arr2.sum # something went wrong

end

#RefactorDiscuss

#------------------------------------------------------
# 8 kyu
# Square(n) Sum
# Complete the square sum function so that it squares each number passed into it and then sums the results together.
 
def square_sum(numbers)

  numbers.map{|num| num ** 2}.sum   

end

#------------------------------------------------------
# 8 kyu
# Reversed Words
#  Complete the solution so that it reverses all of the words within the string passed in.

def solution(sentence)
  reversed = []
  sentence.split.each do |word|
    reversed.unshift word
    end
  reversed.join(' ')
end

#------------------------------------------------------
# 8 kyu
# Get the mean of an array
# It's the academic year's end, fateful moment of your school report. The averages must be calculated. 
# All the students come to you and entreat you to calculate their average for them. Easy ! You just need to write a script.
# Return the average of the given array rounded down to its nearest integer.
 
def get_average(marks)

  marks.inject{|sum, el| sum+el}.to_i/marks.size

end
