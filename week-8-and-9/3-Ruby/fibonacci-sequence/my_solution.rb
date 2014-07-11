# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode
=begin
-Define fibonacci method with num parameter
-Create hard code exceptions for index 0 ("0") and index 1 ("1")
-Use recusion method to add last number and number before that.
=end
	


# 3. Initial Solution

def is_fibonacci?(num)
	return 0 if num == 0
	return 1 if num == 1
	is_fibonacci?(num-2) + is_fibonacci?(num-1)
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
#fibonacci = 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144
#    index =[0, 1, 2, 3, 4, 5, 6 , 7,  8,  9, 10, 11,  12]  

p is_fibonacci?(0) == 0
p is_fibonacci?(1) == 1
p is_fibonacci?(5) == 5
p is_fibonacci?(10) == 55


# 5. Reflection 
=begin
In my research during one of the technical blogs about recursion, I discovered that I could use recursion for this challenge. I also was able to google this exercise and found other solutions as well. I will definitely try and use recusion more often when I can.	
=end