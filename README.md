# ruby_fundamentals2

##Submitting

Create a git repository on GitHub, called "ruby_fundamentals2" or something similar. Clone it onto your own computer. This assignment will walk you through creating several Ruby programs which you should add to your git repository. Don't forget to commit after each exercise! Refer to the submission guide if you get stuck.

Have fun and don't forget to work alongside a partner!

##What You Will Learn

This assignment will teach you more of the fundamental building blocks of Ruby.

Assignment
Methods
Exercise 5
Arrays
Exercise 6
Hashes
Exercise 7
Further reading
Prerequisites

Be comfortable using your command-line interface
Be comfortable using git and GitHub
Have Ruby installed on your computer: in your command-line interface (aka shell or terminal), if typing ruby -v returns an error, Ruby is not installed. Otherwise, you're good to go!
Have a text editor
Methods
In Ruby, everything (including integers, strings, symbols...) is considered an object. If objects are like nouns, methods are like verbs. When you call a method on something, you are simply telling it what to do. A method is programming jargon for an action an object knows how to do.

###Built-in Methods

Ruby comes with a library of predefined methods. In yesterday's assignment we used the built-in methods puts and gets.

puts "What's your name?"
name = gets
puts "Hello #{name}"
Some other built-in Ruby methods include .class, .to_i, and .to_s. Unlike puts and gets, these methods must be performed by specific objects. In programming lingo we say they must be called on specific objects. Let's see that in action:

3.to_s # "3"
In this example we "called" the .to_s ("to string") method "on" the number 3, and in doing so instructed that number to convert itself into a string ("3").

"5.0".to_i # 5
In this example we called the .to_i ("to integer") method on the string "5.0", and in doing so instructed that string to convert itself into an integer (5).

"Bitmaker Labs".class # String
In this example we called the .class method on the string "Bitmaker Labs", which instructed that string to tell us its class (String). Tomorrow's assignment will go much further into the concept of classes.

12.class # Fixnum
In this example we called the .class method on the number 12.

###Defining Methods

You can define your own methods by using the keyword def followed by the method name. The method body is enclosed by this definition on the top and the word end on the bottom. In Ruby the convention is to keep your method names all lower case and to use underscores (_) to separate words. Let's see an example:

def my_first_method
  1 + 1 # Code to be executed
end
To execute or call a method in irb, we simply write the following:

irb(main):001:0> my_first_method
=> 2
or in a Ruby file:

my_first_method # 2
Return values

Every method returns a value. You can specify a return value using the return keyword, otherwise the value of the last line that the method executes will be the value returned by the method. The return value is handed back ("returned") to the caller (ie. the place in your code where you called the method) when the method has done its work. A method must always return exactly one value.

Using the return keyword is referred to as an "explicit return". An "implicit return" refers to when the last line of the method is taken as the return value.

def explicit_return_method
 "The interpreter reads over me, but does nothing"
 return 25
  "The interpreter does not read me, because the return keyword above forces the interpreter to exit the method"
end
The explicit_return_method method returns the value 25 because of the use of the return keyword.

def implicit_return_method
  1 + 1
  25 
end
The implicit_return_method method returns the value 25 because that is the value of the last line of code in the method.

Note: If you have a puts, print or p statement as the last line in your method its return value will be nil, which is Ruby's way of representing a non-value.

###Parameters

Method parameters (also called arguments) are specified between parentheses following the method name. A method can accept any number of parameters (or none). This is a way for the caller of a method to pass it the information it needs in order to do its job.

def reverse_sign(num)
  -1 * num # Code to be executed
end
Here we defined a reverse_sign method that accepts one parameter called num, which needs to be a number.

reverse_sign(56) # -56
Here we called the reverse_sign method and passed it the number 56 as a parameter/argument.

Variable Scope

Scope defines where in a program a variable is accessible. Ruby has four types of variable scope: local, global, instance and class. At this point we are only concerned with local variables. We'll talk more about the other three types in the next few days.

To illustrate the concept of scope:

def plus_one(num_2)
 return num_2 + 1
end

plus_one(num_1) # undefined local variable or method 'num_1' for main:Object
Notice that we're trying to pass the variable num_1 as a parameter to the plus_one method. This produces an error because we never defined the variable. Let's look at the same example with "num_1" now defined:

num_1 = 20

def plus_one(num_2)
 return num_2 + 1
end

plus_one(num_1) # 21
plus_one(num_2) # undefined local variable or method 'num_2' for main:Object
It should be clear that num_1 is different than the variable num_2, which only exists as a placeholder within the definition of plus_one. When we call plus_one(num_1) it is the equivalent of calling plus_one(20), because that is the value that num_1 points to. When we call the plus_one(num_1) method the variable num_2 gets temporarily assigned to the value that was passed in as a parameter (20), but after the method executes that one time, num_2 no longer has a value. This means that trying to call plus_one(num_2) still causes an error because num_2 exists only within the scope of plus_one. We can't use it outside of that method.

Puts / Print / p

As a beginner, it can be quite confusing as to where to put puts and print statements. You should avoid using them on the last line of a method because that will make the method return nil (Ruby's non-value).

See for yourself with irb:



The reason for this is puts and print are both methods that themselves have the return type nil

Instead you can use the p method, which acts like puts but returns back the string you give it instead of nil.

##Exercise 5

Create a method that converts Fahrenheit temperatures to Celsius in a file called exercise5.rb.

Start with prompting the user for a temperature in Fahrenheit. Then call your method and pass in the user input as a parameter.

Your method should:

have one parameter: the temperature in Fahrenheit
do the conversion with this formula: C = (F - 32) x 5/9
ensure that the parameter you pass in is a number by converting it with to_i
Output the result in a full sentence using string interpolation.

Don't forget to commit your progress as you go along. Once you're done, commit one last time and push it to github.

TIP: Don't start your variable names with capital letters, otherwise Ruby will think you want to make a constant instead of a variable. Making a constant is a way of giving a name to a value that won't ever be reassigned.

Arrays
An array is a Ruby data type that holds an ordered collection of values, which can be any type. Ruby arrays can be created with either "literal notation" or the .new method.

Example using literal notation:

x = [1, 2, 3, 4]
y = ["chunky", "bacon"]
x
=> [1, 2, 3, 4]
y
=> ["chunky","bacon"]

y.push("cartoon foxes")
y
=> ["chunky", "bacon", "cartoon foxes"]
Example using .new:

z = Array.new(3, "Matz!")
z # ["Matz!", "Matz!", "Matz!"]
Let's explore properties of arrays by typing each one of the following in irb:

["green", "purple", "orange"].class

["green", "purple", "orange"].length

[1, 15, 7, 4].class

["hello", 7, true].length

[].class

colours = ["green", "purple", "orange"]

colours.class

colours.length

colours[2]

colours[2].class

colours[0].upcase

colours[3]

colours[2] = "yellow"

colours

greeting = "hello"

greetings = [greeting, "hi", "what's up?"]

greetings[0]

greetings[1]

number = 2

greetings[number]

Array.new

z = Array.new(3, "Matz!")

z[0]

So, what does this tell us?

Arrays are delimited with square brackets ([...]), similar to how quotation marks delimit a string
Each object within an array is separated by a comma
Arrays can hold objects of any type, even multiple types in the same array
Arrays have a length method, which does what you'd expect
We can access individual objects within an array by using square brackets and indices. Ruby arrays are zero-indexed, which means the first element's index is always 0.
If we try to access an array index which doesn't exist, it returns nil
We can also initialize an array with Array.new
Array methods

Just like other types of objects, arrays have all sorts of methods. We've already seen .class, .push, and .length. You can of course see a full list in the Ruby documentation. Let's try a few in irb:

colours = ["red", "purple", "pink"]

colours.length

colours << "blue"

colours.length

colours

colours << "orange"

colours.join

colours.join.class

colours.join(", ")

[4, 7, 12].join("-")

colours.include?("purple")

colours.include?("yellow")

colours.sort

grades = [87, 65, 90, 77]

grades.length

grades.max

grades.min

[1, 2, "hello"].min

###What did we learn?

We can add elements to the end of an array using <<, aka the "shovel" operator
The array's join method converts an array into a string, and optionally accepts another string as an argument that will be used to separate each item from the array
The array's include? method accepts an object and returns a boolean value (true or false)
Arrays have min and max methods, however they require all elements of the array to be the same data type
Click on the link above to the Array class and take a look at the documentation for the methods that we tried out.

##Exercise 6

We're going to make a shopping list by storing a few items in an array. Feel free to start with whatever items you like:

grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
After each step, run your program to ensure it works before you move onto the next one. It's a good idea to commit often, too.

Your next step should present your grocery list with an item on each line, with an asterisk (*) in front of it so that it appears like this:


You realize you've forgotten some rice, so add it to your list and output it again. Given that you've already output your list twice, it might be good to consider writing a method to do this. Putting frequently used chunks of code in a method lets you reuse them throughout your program without having to type them out over and over.
You lost count of how many things you need to pick up. Better output the total number of items on your list.
Check to see if your list includes "bananas". If it does, output "You need to pick up bananas". Otherwise, output "You don't need to pick up bananas today".
Display the second item in the list. (Don't forget that arrays indices start at zero!)
It turns out that everything in this grocery store you're visiting is stored alphabetically, so to better plan out what you need to buy you should sort your grocery list and output it with asterisks again.
After looking everywhere, you can't find the salmon. Delete it from your list and redisplay the list one last time.
After you're done, be sure you have everything committed and pushed to your github repo.

###Hashes
Hashes are collections of key-value pairs. Like arrays, they have values associated with indices, but in the case of hashes the indices are called keys. Instead of referring to the position of a specific value, keys act more like labels for the values in your hash. Keys can be many different data types, including integers, float, and strings. Symbols are the type most often used as hash keys. The values to which keys refer can be any Ruby object.

The syntax for creating a new hash is like so:

my_hash = {
  :key1 => "First value!",
  :key2 => "Second value!",
  :key3 => "Third value!"
}
The keys of this new hash are the symbols :key1, :key2, and :key3. The values are the strings "First value!", "Second value!", and "Third value!".

Note the curly braces ({}) as well as this funky new => symbol, which Rubyists refer to as a hash rocket.

You retrieve a value from a hash by writing its key in square brackets. You can also add new keys and values to an existing hash using square brackets:

my_hash = {
  :key1 => "First value!",
  :key2 => "Second value!",
  :key3 => "Third value!"
}

my_hash[:key4] = "Fourth value!"
my_hash[:key4] # "Fourth value!"

my_hash[:key2] # "Second value!"
my_hash[:key5] # nil
As the last line in the above example illustrates, if you try to refer to a key that doesn't exist the result will be nil. Hashes can also be initialized with the .new method, which optionally accepts a parameter that will be used as the default value for undefined keys instead of nil:

hash1 = Hash.new
hash1 # {}

hash1[:some_key] # nil

hash2 = Hash.new("banana")
hash2 # {}
hash2[:some_key] # "banana"
Let's try using the .each method from yesterday to loop through the contents of a hash:

my_hash = {
  :key1 => "First value!",
  :key2 => "Second value!",
  :key3 => "Third value!"
}

my_hash.each do |k, v|
  puts "The key is #{k} and the value is #{v}"
end

# The key is key1 and the value is First value!
# The key is key2 and the value is Second value!
# The key is key3 and the value is Third value!
As you can see, when iterating over a hash two block arguments are used instead of one. As we iterate over the key-value pairs in our hash the first block argument (called k in this example) will contain the key and the second block argument (called v in this example) will contain the value.

##Exercise 7

Create a file named exercise7.rb.

Don't forget to try running your code after each step, and to commit frequently as you work!

Start out by creating the following hash representing the number of students in past Bitmaker cohorts:

students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}
Create a method that displays the name and number of students for each cohort, like so:



Add cohort 4, which had 43 students, to the hash.

Use the keys method to output all of the cohort names.

The classrooms have been expanded! Increase each cohort size by 5% and display the new results.

Delete the 2nd cohort and redisplay the hash.

BONUS: Calculate the total number of students across all cohorts using each and a variable to keep track of the total. Output the result.

After you're done, be sure you have committed and pushed everything to your Github repo.
