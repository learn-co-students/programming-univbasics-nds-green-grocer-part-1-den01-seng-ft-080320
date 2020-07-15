def find_item_by_name_in_collection(name, collection)
  collection.find {|obj| 
    obj[:item] == name
  }
   
end

def consolidate_cart(cart)

  cart.each { |item| 
    if item[:count]
      item[:count] += 1
    else 
      item[:count] = 1
    end
  }
  
  cart
end

  