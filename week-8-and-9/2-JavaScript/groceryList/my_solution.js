// U3.W8-9: 


// I worked on this challenge with Whitney Obanner.

// 0. User Stories
// # As a user, I want to be able to create a new grocery list
// # As a user, I want to add to the new grocery list
// # As a user, I want to remove items from grocery list
// # As a user, I want to search for items in the list
// # As a user, I want to be able to view all the items on the list

// 2. Pseudocode
// Create function with name grocery list with no arguments
// Create and empty list (array)
// Start creating funtions per user story
// Create funtion 'add' that takes a single argument (string)
  // Inside add function we are going to push new item onto list
// Create funtion 'remove' that takes a single argument (string)
  // Inside remove function we need to find the index of the item and remove the item at that index
// Create funtion 'search_item' that takes a single argument (string)
  // Inside search_item function 
  // if item is in array return true else return false
// Create funtion 'view_items' 
  // Print array




// 3. Initial Solution

function Groceries () {
  this.list = []
  this.add = function (item) {
    this.list.push(item)
  }
  this.remove_item = function (item) {
    var index_remove = this.list.indexOf(item)
    this.list.splice(index_remove, 1)
  }
  this.search_item = function(item) {
    if(this.list.indexOf(item) != -1) return true
    else return false
  }
  this.view_item = function() {
    console.log(this.list)
  }
}


// 4. Refactored Solution






// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
function assert (test, message, test_number) {
  if (!test) {
    console.log(test_number + "false")
    throw "error:" + message
  }
  console.log(test_number + "true")
  return true
  }

grocery_list = new Groceries();

assert(
    (grocery_list instanceof Object),
    "The value of grocery list should be an Object.\n",
    "1. "
)

assert(
    (grocery_list.add instanceof Function),
    "The value of add should be a Function. \n",
    "2. "
  )
  
assert(
    (grocery_list.remove_item instanceof Function),
    "The value of remove_item should be a Function. \n",
    "3. "
)

assert(
    (grocery_list.search_item instanceof Function),
    "The value of search_item should be a Function. \n",
    "4. "
)

assert(
    (grocery_list.view_item instanceof Function),
    "The value of view_item should be a Function. \n",
    "5. "
)