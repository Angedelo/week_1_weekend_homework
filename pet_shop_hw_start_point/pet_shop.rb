def pet_shop_name(shop)
  shop[:name]
end

def total_cash(shop)
  shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
  shop[:pets].length
end

def pets_by_breed(shop, breed)
  dogs = []
  for pet in shop[:pets]
    if pet[:breed] == breed
    dogs.push(pet)
    end
  end
  return dogs
end

def find_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      index = shop[:pets].index(pet)
        shop[:pets].delete_at(index)
    end
  end
end

def add_pet_to_stock(shop, pet)
  shop[:pets].push(@new_pet)
end

def customer_cash(customer_with_index)
  return customer_with_index[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer_array_with_index)
  return customer_array_with_index[:pets].length
end

def add_pet_to_customer(customer_array_with_index, new_pet)
  customer_array_with_index[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, pet)
  return false if customer[:cash] < pet[:price]
end

def customer_can_afford_pet(customer, pet)
  return false if customer[:cash] < pet[:price]
else
  return true
end

def sell_pet_to_customer(shop, pet, customer)
  add_pet_to_customer(customer, pet)
  customer_cash = customer[:cash]
  remove_customer_cash(customer, customer_cash)
  remove_pet_by_name(shop, pet[:name])
  add_or_remove_cash(shop, customer[:cash])
end
