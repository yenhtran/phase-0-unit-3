# U3.W8-9: 


# I worked on this challenge with Cassidy Clawson.

# 2. Pseudocode
=begin
-Create output array.
-Iterate through the input array.
-Have an if/else tree, examining if the numbers are multiples of 3, 5, or 15
-If multiple if found, concatinate appropriate string
-Else concatinate examined integer
=end



# 3. Initial Solution

# def super_fizzbuzz(input_array)
# 	output_array = []
# 	input_array.each do |x| 
# 		if x % 3 == 0 && x % 5 != 0
# 			output_array << "Fizz"
# 		elsif x % 5 == 0 && x % 15 != 0
# 			output_array << "Buzz"
# 		elsif x % 15 == 0
# 			output_array << "FizzBuzz"
# 		else output_array << x
# 		end
# 	end
# 	return output_array
# end

# 4. Refactored Solution

=begin
-Get rid of output_array
-Evaluate each item twice for 3 and 5, and concatinate the strings if necessary.
=end

def super_fizzbuzz(input_array)
	input_array.map! do |x|
		string = ""
		string = string + "Fizz" if x % 3 == 0
		string = string + "Buzz" if x % 5 == 0
		if string == ""
			x 
		else 
			string
		end
	end
	return input_array
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
puts super_fizzbuzz([1,2,3]) == [1, 2, "Fizz"]
puts super_fizzbuzz([1,2,5]) == [1, 2, "Buzz"]
puts super_fizzbuzz([1,2,15]) == [1, 2, "FizzBuzz"]
puts super_fizzbuzz([30, 9, 20, 1]) == ["FizzBuzz", "Fizz", "Buzz", 1]




# 5. Reflection 