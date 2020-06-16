require 'pry'

def find_item_by_name_in_collection(name, collection)
  counter = 0 
  while counter < collection.length do 
    return collection[counter] if collection[counter][:item] == name
    counter += 1 
  end
  nil
end
  # Implement me first!
  #
  # Consult README for inputs and output

def consolidate_cart(cart)
  combined_cart = Array.new
  counter = 0
  while counter < cart.length do
    combined_cart << cart[counter]
    counter += 1 
  end
  combined_cart = combined_cart.uniq
  counter = 0
  while counter < combined_cart.length do
    combined_cart[counter][:count] = cart.count(combined_cart[counter])
    counter += 1 
  end
  combined_cart
end
  
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.



  