# creates an empty hash and returns it
def new_hash
  # return an empty hash
  {}
end
puts new_hash
#=> {}

# creates and returns a valid hash that contains key/value pairs of your choice
def my_hash 
  # return a valid hash with any key/value pair of your choice
  {"bread" => 2.35,
  "milk" =>  3.00,
  "eggs" =>  2.15 
  }
end
puts my_hash
#=> {"bread"=>2.35, "milk"=>3.0, "eggs"=>2.15}

# creates and returns a hash named pioneer whose key is a symbol :name and whose value is a string, 'Grace Hopper
def pioneer
  # return a hash with a key of :name and a corresponding value of 'Grace Hopper'
  {:name => "Grace Hopper"}
end
puts pioneer
#=> {:name=>"Grace Hopper"}
puts pioneer[:name]
#=> Grace Hopper


# takes an integer as an argument and returns a hash with a key :id and and the integer as the value
def id_hash_generator(number)
  # return a hash with a key :id assigned to the provided number
  {:id => number}
end

puts id_hash_generator(4)
#=> {:id=>4}
