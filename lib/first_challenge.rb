def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  contacts.each do |key, value|
    new_array = []
    if key == :favorite_icecream_flavors
      value.each do |flavor|
        new_array << flavor
        if flavor == "strawberry"
          new_array.delete(flavor)
        end
      end
    end
    contacts["Freddy Mercury"][:favorite_icecream_flavors] = new_array
  end

  #remember to return your newly altered contacts hash!
  contacts
end
