#link: https://learning.flatironschool.com/courses/2661/pages/reading-values-from-hashes?module_item_id=202333

# Retrieve data from hashes
# Handle a nil response when no key is found

# Retrieving Data from Hashes 
# Similar to retrieving data from an array, instead of giving an array the index number in brackets [i] 
# we give a hash the name of they key 
pets = {"cat" => "Maru", "dog" => "Pluto"}
#=> {"cat"=>"Maru", "dog"=>"Pluto"}

pets["cat"]
#=> "Maru" 

# Using [] is referred to as "bracket notation"
# keys can be Symbols instead of Strings 
# The hash lookup works the same 
meals = {:breakfast => "cereal", :lunch => "peanut butter and jelly sandwich", :dinner => "mushroom risotto"}
#=> {:breakfast=>"cereal", :lunch=>"peanut butter and jelly sandwich", :dinner=>"mushroom risotto"}

meals[:breakfast]
#=> "cereal" 

#It will also work if we use Integers for keys
healthy_things = {1 => "learn to garden", 2 => "plant seeds", 10 => "eat vegetables"}

healthy_things[10]
#=> "eat vegetables" 

# We can also use variables inside the brackets 
key = :name
#=> :name

user_info = {:name => "Ada", :email => "ada.lovelace@famous_computer_inventors.com"}
#=> {:name=>"Ada", :email=>"ada.lovelace@famous_computer_inventors.com"}

user_info[key]
#=> "Ada" 


# Handle a nil Response when No key is Found 
# Ruby returns nil by default if no value is found 
grocery_items = {:apples => 10, :pears => 4, :peaches => 2, :plums => 13}
#=> {:apples=>10, :pears=>4, :peaches=>2, :plums=>13}

grocery_items[:rambutans]
#=> nil 

# This is useful b/c in ruby, nil is falsy, while any other data type value is truthy (even empty arrays and hashes)
# This allows us to easily check if a hash has a key/value pair or not 
grocery_items = {:apples => 10, :pears => 4, :peaches => 2, :plums => 13}
#=> {:apples=>10, :pears=>4, :peaches=>2, :plums=>13}

if grocery_items[:rambutan]
  puts "Rambutan present!"
else
  puts "No rambutan."
end
# No rambutan. 