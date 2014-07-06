$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
 bodyElement = $('body')
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 h1 = $('h1')
 h1.css('color', 'green')
 h1.css('border', 'solid gray 3px')
 //h1.css('visibility', 'hidden')
 h1.html('Mule Deer')

//RELEASE 3: Event Listener
  // Add the code for the event listener here 
 $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://www.nps.gov/romo/naturescience/images/mule_deer_buck_1.jpg')
  })

 $('img').on('mouseleave', function(f){
     f.preventDefault()
    $(this).attr('src', 'dbc_logo.jpg')
  })
 
//RELEASE 4 : Experiment on your own
 $('img').css('border-style', 'dotted');
 $('img').css('border-color', 'red');
 $('img').css('border-width', '1px');

 $('img').animate({
 	width: "70%",
 	'border-width': "10px"
 }, 2000 );
 
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
