# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge by myself.

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  rep_name = $db.execute("SELECT name FROM congress_members WHERE years_in_congress > #{minimum_years}")
  rep_years = $db.execute("SELECT years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  rep_name = rep_name.map{|name| name[0]}
  rep_years = rep_years.map{|years| years[0]}
  name_and_year = Hash[rep_name.zip rep_years]
  name_and_year.each {|key, value| puts "#{key} - #{value}"}
end

def print_lowest_grade_level_speakers
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  rep_name = $db.execute("SELECT name FROM congress_members WHERE grade_current < 8")
  rep_grade = $db.execute("SELECT grade_current FROM congress_members WHERE grade_current < 8")
  rep_name = rep_name.map{|name| name[0]}
  rep_grade = rep_grade.map{|grade| grade[0]}
  name_and_grade = Hash[rep_name.zip rep_grade]
  name_and_grade.each {|key, value| puts "#{key} - #{value}"}
end

def print_selected_states(*states)
  puts "REPRESENTATIVES FOR SELECTED STATES"
  states.each {|state|
    selected_reps = $db.execute("SELECT name, location FROM congress_members WHERE location= '#{state}'")
    selected_reps.each {|name,location| puts "#{location}-#{name}"}
  }
  puts ""
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)

print_separator

print_lowest_grade_level_speakers 

print_separator

print_selected_states("NJ", "NY", "ME", "FL", "AK")



##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.


# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding? 
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.

# I didn't have any problems with my sqlite3 gem and was able to get it to work. From what I can guess, '$db' holds the database that is called? And I'm guessing the '$db.execute' allows use to apply a sql command into our Ruby code.