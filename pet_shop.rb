def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash_to_be_added)
  total_cash = pet_shop[:admin][:total_cash] += cash_to_be_added
  return total_cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_pets_sold)
  return pet_shop[:admin][:pets_sold] += number_pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  pets = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets.push(pet)
    end
  end
  return pets
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  return stock_count(pet_shop)
end

def customer_pet_count(customers)
  return customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# OPTIONAL

def customer_can_afford_pet(customer, new_pet)
customer[:cash] >= new_pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)
  # if customer_can_afford_pet = true
  # if find_pet_by_name != nil
  add_pet_to_customer(customer, pet)
  increase_pets_sold(pet_shop, 1)
  add_or_remove_cash(pet_shop, pet[:price])
  # end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil && customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    increase_pets_sold(pet_shop, 1)
    add_or_remove_cash(pet_shop, pet[:price])
  # elsif customer_can_afford_pet(customer, pet) == false
  #   puts "Not enough cash dollar!"
  # elsif pet == nil
  #   puts "Pet not found!"
  end
end

def pets_by_breed(pet_shop, breed)
  pets = []
  for pet in pet_shop[:pets] do
    if pet[:breed] == breed
      pets.push(pet)
    end
  end
  return pets
end
