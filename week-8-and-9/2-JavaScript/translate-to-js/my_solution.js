// U3.W8-9: Challenge you're converting


// I worked on this challenge with Whitney Obanner.

// 2. Pseudocode
// Problem: Pass a number in to check and see if it's in Fib sequence
// Create a function to check if it's fib sequence
//  Function takes single argument
//  Create fib_array [0, 1]
//  Add add last and second-to-last number 
//  While sum is less than passed number, push to fib_array
//  If number is in fib_array, return true
//  Else return false




// 3. Initial Solution
function is_fibinocci(num){
  var fib_array = [0,1]
  while (fib_array[fib_array.length-1] <= num) {
    fib_array.push(fib_array[fib_array.length-1] + fib_array[fib_array.length-2])
  };
  if (fib_array.lastIndexOf(num) != -1){
    return true
  } else {
    return false
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

var fibinocci = [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946]

var random_fibinocci = function() {
  return fibinocci[Math.round(Math.random() * (fibinocci.length - 1))]
}

assert(
  is_fibinocci(random_fibinocci()) === true,
  "The value of is_fibinocci is true when a integer is a number of the Fibinocci sequence. \n",
  "1. "
)

assert(
  is_fibinocci(8670007398507948658051921) === true,
  "The value of is_fibinocci is true when a large integer is a number of the Fibinocci sequence. \n",
  "2. "
)

assert(
  is_fibinocci(random_fibonacci()+100) === false,
  "The value of is_fibinocci is false when it is not in the Fibinocci sequence. \n",
  "3. "
)

assert(
  is_fibinocci(927372692193078999171) === false,
  "The value of is_fibinocci is false when a large integer is not a number of the Fibinocci sequence. \n",
  "4. "
)



// 5. Reflection 
// I needed a lot of help on this challenge and was super appreciative that a classmate was able to assist me with this challenge. I learned how to write assert statements in Javascript and reviewed a lot of concepts that I forgot from weeks ago.