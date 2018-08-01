users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
jonathan_twitter = users["Jonathan"][:twitter]
p jonathan_twitter

# 2. Get Erik's hometown
erik_hometown = users["Erik"][:home_town]
p erik_hometown

# 3. Get the array of Erik's lottery numbers
erik_lottery_numbers = users["Erik"][:lottery_numbers]
p erik_lottery_numbers

# 4. Get the type of Avril's pet Monty
avril_pet_type = users["Avril"][:pets][0][:name]
p avril_pet_type

# 5. Get the smallest of Erik's lottery numbers
erik_min_lottery_number = erik_lottery_numbers.min
p erik_min_lottery_number

# 6. Return an array of Avril's lottery numbers that are even
avril_even_lottery_numbers = users["Avril"][:lottery_numbers].select{|el| el % 2 == 0}
p avril_even_lottery_numbers

# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
erik_lottery_numbers.push(7)
p erik_lottery_numbers

# 8. Change Erik's hometown to Edinburgh
temp = users["Erik"][:home_town]
users["Erik"][:home_town] = "Edinburgh"
p "Erik's hometown changed from #{temp} to #{users["Erik"][:home_town]}"

# 9. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets].push({name: "Fluffy", species: "cat"})
p users["Erik"][:pets]

# 10. Add another person to the users hash
users["Simon"] = {
  :twitter => "simon_s",
  :lottery_numbers => [5, 10, 15, 20, 25, 30],
  :home_town => "Edinburgh",
  :pets => [
  {
    :name => "dee-fur",
    :species => "dog"
  }
]
}
p users["Simon"]
