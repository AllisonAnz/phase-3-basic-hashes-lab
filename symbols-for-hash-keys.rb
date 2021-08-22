# Link: https://learning.flatironschool.com/courses/2661/pages/using-symbols-for-hash-keys?module_item_id=202334

# Learning Goals
# Review the Symbol data type
# Recognize the immutability of symbols
# Compare the use of symbols and strings as hash keys
# Recognize Ruby's alternate syntax for hashes with symbols for keys

# We saw that hashes are data structures comprised of key/value pairs 
dog_one = {
  :name => "Luca",
  :breed => "German Shepherd"
}
#=> {:name=>"Luca", :breed=>"German Shepherd"}

dog_two = {
  :name => "Lola",
  :breed => "Giant Schnauzer"
}
#=> {:name=>"Lola", :breed=>"Giant Schnauzer"} 

# Using Symbols for Hash Keys
# Just to quickly review, symbols (Links to an external site.) are a scalar data type. 
# They share some similarities with strings, but instead of being wrapped in quotations, symbols always start with a colon (:):

# Ruby allocates memory to that piece of data
# If we write a symbol again somewhere else, Ruby will refer back to that same allocation in memeory 
:i_am_a_symbol.object_id
#=> 1525788
:i_am_a_symbol.object_id
#=> 1525788 

# Everytime we call :i_am_symbol.object_id we get the same integer back 

# Using the Alternate Hash Syntax 
# When using symbols for keys, we have the option of using an alternative syntax when defining a hash 
dog_one = {
  name: "Luca",
  breed: "German Shepherd"
}
#=> {:name=>"Luca", :breed=>"German Shepherd"}

dog_two = {
  name: "Lola",
  breed: "Giant Schnauzer"
}
#=> {:name=>"Lola", :breed=>"Giant Schnauzer"} 

