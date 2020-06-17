require 'pry'

def find_item_by_name_in_collection(name, collection)
  counter = 0 
  while counter < collection.length do 
    return collection[counter] if collection[counter][:item] == name
    counter += 1 
  end
end

'''def consolidate_cart(cart)
  index = 0
  new_cart = []
  
  while index < cart.length do
    item = find_item_by_name_in_collection(cart[index][:item], new_cart)
    binding.pry
    if item
      new_cart_index = 0
      while new_cart_index < new_cart.length do
        if new_cart[new_cart_index][:item] === item[:item]
          new_cart[new_cart_index][:count] += 1
          binding.pry
        end
        new_cart_index += 1
      end
    else
      cart[index][:count] = 1
      new_cart << cart[index]
      binding.pry
    end
    index += 1
  end
  binding.pry
  new_cart
end'''
  

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



  