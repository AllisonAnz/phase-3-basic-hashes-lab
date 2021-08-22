# Intro to Hashes 
# Define a Ruby hash
# Define hash keys
# Define hash values
# Create a Hash using its implicit ("Hash-Literal") form
# Create a Hash with Hash.new

# Ruby Hash 
# A hash is a collection of data that is separated into pairs of keys and values 
# Each key/value paid makes up one unit in the hash 
# {"key" => "value", "another_key" => "another value"} 

prices = {
"bread" => 2.35,
"milk" =>  3.00,
"eggs" =>  2.15
} 

# Hash Keys are things we "look up" with
# Hash Keys can be any type of Data or Symbols 
{:name => "John Henry", :occupation => "Steel-driving man"} 

# Ruby has another syntax for Hashes, that have a Symbol as key 
# Hashes defined this way are called "JSON Hashes"
{name: "John Henry", occupation: "Steel-driving Man"} 

# Hash Values 
# Hash values are the data that are returned when we give a Hash a key to use to look up 
# Hash Values don't need to contain values of all the same type. You can have strings, other scalar data, or even other Arrays or Hashes 
{:item => "banana", :price => 0.89, :quantity => 6, :description => "a delicious fruit"} 

# Creating a Hash using its implicit ("Hash-Literal") form 
# The easiest way to create a Hash is to write it out as we've seen in the examples so far 
new_hash = { 
    :create => Time.now, 
    :message => "Hello World"
}
puts new_hash
#=> {:create=>2021-08-15 14:40:42 -0500, :message=>"Hello World"}

# This is implicit or "Hash literal"

# Create a hash with Hash.new 
# We can use Hash.new to create a new hash 
second_new_hash = Hash.new 
#=> {}

# This is the same as writing 
# second_new_hash = {}
#=> {}