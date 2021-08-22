# Hash Iterations 
# Link: phase-3-basic-hashes-lab

# So far, we can read hash values using keys 
person = {
  name: "Sam",
  age: 31
}
#=> {:name=>"Sam", :age=>31}

person[:age]
#=> 31 

# Update Hash values 
# Using braket-equals method 
person = {
  name: "Sam",
  age: 31
}
#=> {:name=>"Sam", :age=>31}

person[:age]
#=> 31

person[:age] = 32
#=> 32 

person 
#=> {:name=>"Sam", :age=>32} 

# Add Keys and Values to a Hash
# Previously we saw that using the bracket method and passing in an invalid key returns nil 
person[:hometown]
#=> nil 

# Using the braket-equals method, Ruby creates a key/value pair on the hash 
person = {
  name: "Sam",
  age: 31
}

# No :hometown key found
person[:hometown]
#=> nil

# Because :hometown was not present, Ruby creates the key value pair here
person[:hometown] = "Brooklyn, NY"
#=> "Brooklyn, NY"

# Now, the :hometown key refers to "Brooklyn, NY" when used in the brack method
person[:hometown]
#=> "Brooklyn, NY"

# Our original hash is also mutated
person
#=> {:name=>"Sam", :age=>31, :hometown=>"Brooklyn, NY"} 

# Find or Create a Hash Value 
# We saw in the last lesson the the bracket method can be used in conditional statements 
# One Common use case of this is having to either find a vaue or create that value 
shipping_manifest = {
  "whale bone corset" => 5,
  "porcelain vase" => 2,
  "oil painting" => 3,
  "silverware" => 34,
  "loom" => 1
} 

#Imagine the hash is a manifest for products being shipped with their values representing quanity 
# our job is to keep a tally as more products are conted 
# A fourth oil painting shows up and we need to add it to the list 
shipping_manifest["oil painting"] = 4 

# If we needed to add one 
shipping_manifest["oil painting"] += 1 
puts shipping_manifest["oil painting"]
#=> 5

# What happens when a new item is introduced 
# Say we need to ship one top hat, that isn't present in the manifest 
# shipping_manifest["top hat"] += 1 
# NoMethodError (undefined method `+' for nil:NilClass) 

# We can prevent this error from occuring by setting up a conditional and using the bracket method 
# to first look up a key before trying to change it 
if shipping_manifest["top hat"]
  shipping_manifest["top hat"] += 1
else
  puts "Key not found!"
end 

# Instead of outputting amessage to the terminal we can handle adding a key/value pair 
if shipping_manifest["top hat"]
  shipping_manifest["top hat"] += 1
else
  shipping_manifest["top hat"] = 1
end 