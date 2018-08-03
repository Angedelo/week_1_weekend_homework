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
