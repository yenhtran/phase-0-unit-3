# U3.W8-9: Triangle Debugger


# I worked on this challenge with Clawson Cassidy


# 1. Original Solution

# def valid_triangle?(a, b, c)
#   sum = 0
#   if a != 0 || b != 0 || c != 0
#     if a >= b
#       largest = a
#       sum += b
#     else 
#       largest = b
#       sum += a
#     end

#     if c > largest
#       sum += largest
#       largest = c
#     else sum += c
#     end
    
#     if sum > largest
#       return "true"
#     else return "false"
#     end
#   else return "false"
#   end
# end




# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
# valid_triangle? expects 3 arguments

# * what is the exact line number the error is appearing?
# Line 9
# * before you fix the bug, what do you think is causing the error?
# It was expecting 3 arguments but got 4. We created a new sum variable and set it to 0. 

# --- Bug 2 ---
# * what is the exact description of the error?
# valid_triangle? returns true for an equilateral triangle
# Failure/Error: valid_triangle?(length, length, length).should be_true
#   expected true to respond to `true?`

# * what is the exact line number the error is appearing?
# ./triangle_spec.rb:14:in `block (2 levels) in <top (required)>'

# * before you fix the bug, what do you think is causing the error?
# Because a is not bigger than b, and b is not bigger than c. Doesn't pass both condition. 

# --- Bug 3 ---
# * what is the exact description of the error?
# valid_triangle? returns true for an isoceles triangle
#      Failure/Error: isoceles_triangles.all? do |triangle|
#        expected true to respond to `true?`

# * what is the exact line number the error is appearing?
# ./triangle_spec.rb:32:in `block (2 levels) in <top (required)>

# * before you fix the bug, what do you think is causing the error?


# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a,b,c)
	triangle = [a,b,c]
	return false if triangle.sort!.length != 3
	triangle.each { |side| return false if (side <=> 0) <= 0 }
	return false if (triangle[0] + triangle[1]) <= triangle[2]
	return true
end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
puts valid_triangle?(100, 100, 1)




# 5. Reflection 
=begin 
I didn't feel comfortable with this challenge and really needed to lean on my pair for this exercise. In the refactoring solution my partner suggested to use the combined comparison operator, which I completely forgot from when I did it in Codeacademy. I think what I'm stuggling with is that I am forgetting a lot of what I've learned in the past couple of weeks. Neet to start putting together those cheetsheets to recall...
=end