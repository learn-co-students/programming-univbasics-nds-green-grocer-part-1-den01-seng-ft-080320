def find_item_by_name_in_collection(name, collection)
  collection.each {|element|
    element.each {|key_1, value_1|
      if element[key_1] == name
        return element
      end
    }
  }
  nil
end

def consolidate_cart(cart)
  hash = Hash.new(0)
  cart.each {|element|
    hash[element] += 1
  }
  cart_1 = Array.new(0)
  hash.each {|key_1, value_1|
    key_1[:count] = value_1
    cart_1 << key_1
  }
  cart_1
end

# Alternative method

# def consolidate_cart(cart)
# item_name = Array.new(0)
# new_cart = Array.new(0)
# cart.each {|element|
#     item_name << element[:item]
#   }
# cart.each {|element|
#     element[:count] = item_name.count(element[:item])
#     new_cart << element
#   }
# new_cart.uniq!
# new_cart
# end


  