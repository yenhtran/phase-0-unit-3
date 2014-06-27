# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Alan Cohen
# 2. Yen Tran
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to be able to create a new grocery list
# As a user, I want to add to the new grocery list
# As a user, I want to remove items from grocery list
# As a user, I want to search for items in the list
# As a user, I want to be able to view all the items on the list
 
# Pseudocode
# create a class
# initialize the instance variables
# create "new grocery list" method
# create "add item" method
# create "remove item" method
# create "search item" method
# create "view all items" method
 
 
# Your fabulous code goes here....

class GroceryList

  def initialize(list)
    @list = list
  end
  
  def view_all_items
    p @list
  end
  
  def add_item(new_item)
    p @list.push(new_item)
  end
  
  def remove_item(item)
    @list.delete(item)
    p @list
  end
  
  def search_item(item)
    return @list.include?(item)
  end

end


# DRIVER CODE GOES HERE. 
list = %w(eggs bread milk apple)
grocerylist = GroceryList.new(list)
p "-" * 50
p grocerylist.view_all_items == %w(eggs bread milk apple)
p "-" * 50
p grocerylist.add_item("carrot") == %w(eggs bread milk apple carrot)
p "-" * 50
p grocerylist.remove_item("bread") == %w(eggs milk apple carrot)
p "-" * 50
p grocerylist.search_item("eggs") == true
p "-" * 50
p grocerylist.search_item("banana") == false
p "-" * 50

 

# Reflections
=begin
In this challenge I think I am finally understanding why DBC makes us do the steps in the order that they have us do. (i.e. Psudocode, DriverCode, etc.) Alan and I really tried and forced ourselves to write the driver code first and wrote the code so that it would pass. I do think our code looks a lot simpler than if we wrote the code first. I learned that writing a 'features' list first in our Psudocode makes it a lot easier to start Drivercode. While I still feel like I need to practice writing Driver Code, I finally understand how to write them and their place in the proces. I think one of my favorite parts of this challenge is that I finally see a process on how to approach these challenges.
=end