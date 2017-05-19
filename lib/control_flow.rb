# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  str.chars.map { |ch| ch == ch.upcase ? ch : next }.join("")
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  str_length = str.length
  middle_idx = (str_length / 2).round

  str_length.odd? ? str[middle_idx] : str[middle_idx - 1 .. middle_idx]
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
  str.chars.count { |ch| VOWELS.include?(ch)}
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  (1..num).reduce(:*)
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  new_array = ""
  arr.each_with_index do  |ch, idx|
    new_array << ch
    new_array << separator unless idx == arr.length - 1
  end
  new_array
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  str.chars.map.each_with_index { |ch, i| i.even? ? ch.downcase : ch.upcase }.join("")
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  words = str.split(" ")

  words.map {|word| word.length >= 5 ? word.reverse : word}.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  array = []
  (1..n).each do |num|
    if num % 3 == 0 && num % 5 == 0
      array << "fizzbuzz"
    elsif num % 5 == 0
      array << "buzz"
    elsif num % 3 == 0
      array << "fizz"
    else
      array << num
    end
  end
  array
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  length = arr.length - 1
  array = []
  until length < 0
     array << arr[length]
     length -= 1
   end
   array
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  return false if num == 1
  return true if num == 2
  (2...num).each do  |n|
    if num % n == 0
      return false
    end
  end
  true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
 (1..num).select { |n| num % n == 0 }
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  factors(num).select { |n| prime?(n) }
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  prime_factors(num).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  odd, even = [], []

  arr.each { |n| n.even? ? even << n : odd << n }

  even.length > 1 ? odd[0] : even[0]
end
