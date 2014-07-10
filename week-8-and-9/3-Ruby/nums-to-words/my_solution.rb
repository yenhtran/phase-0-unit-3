# U3.W8-9: Numbers to English Words


# I worked on this challenge by myself.

# 2. Pseudocode
# Define method num_to_words method with int as argument
# Write out words for ones place, teens, and tens_array, each in it's own array
# Begin with empty string
# Divide int into millions, thousands, hundreds, tens, ones




# 3. Initial Solution

# def num_to_words int
# 	ones_place = ["zero","one","two","three","four"," five","six","seven","eight","nine","ten"]
# 	teens_place = ["blank","eleven","twelve","thirteen", "fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
#     tens_place = ["blank","blank","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

#     result = ""

#     #Millions place

#     left = int / 1000000
#     remainder = int % 1000000
   
#     if left > 0
#     	result << num_to_words(left) << "million "
#     	int = remainder
# 	end

# 	# #Thousands place

# 	left = int / 1000
# 	remainder = int % 1000

# 	if left > 0 
# 		result << num_to_words(left) << "thousand "
# 		int = remainder
# 	end

# 	#Hundreds place

# 	left = int / 100
# 	remainder = int % 100

# 	if left > 0
# 		result << num_to_words(left) << "hundred "
# 		int = remainder
# 	end

# 	#Tens place

# 	left = int/10
# 	remainder = int % 10

# 	if left > 0
# 		if left == 1 && remainder > 0
# 			result << teens_place[remainder]
# 			remainder = 0
# 		else
# 			result << tens_place[left]
# 		end
# 	end

# 	left = remainder

# 	# One's place

# 	if left > 0
# 		result  << ones_place[left]
# 	end

# 	result

# end




# 4. Refactored Solution

def num_to_words int
	ones_place = ["zero","one","two","three","four"," five","six","seven","eight","nine","ten"]
	teens_place = ["blank","eleven","twelve","thirteen", "fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
    tens_place = ["blank","blank","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

    result = ""

    #Millions place

    left = int / 1000000
    remainder = int % 1000000
	result << num_to_words(left) << "million " if left > 0
	int = remainder

	# #Thousands place

	left = int / 1000
	remainder = int % 1000
	result << num_to_words(left) << "thousand " if left > 0 
	int = remainder

	#Hundreds place

	left = int / 100
	remainder = int % 100
	result << num_to_words(left) << "hundred " if left > 0
	int = remainder

	#Tens place

	left = int/10
	remainder = int % 10

	if left > 0
		if left == 1 && remainder > 0
			result << teens_place[remainder]
			remainder = 0
		else
			result << tens_place[left]
		end
	end
	left = remainder

	# One's place
	
	result << ones_place[left] if left > 0
	result
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
p num_to_words(4)  == "four" 
p num_to_words(27) == "twentyseven"
p num_to_words(92)  == "ninetytwo"  
p num_to_words(112) == "onehundred twelve"
p num_to_words(4321) == "fourthousand threehundred twentyone"
p num_to_words(78954) == "seventyeightthousand ninehundred fiftyfour"
p num_to_words(496737) == "fourhundred ninetysixthousand sevenhundred thirtyseven"
p num_to_words(5937562) == " fivemillion ninehundred thirtyseventhousand fivehundred sixtytwo"




# 5. Reflection 
=begin 
You would think this challenge was easy, but it was kind of complicated. I needed help on how
to approach the problem. 
=end
