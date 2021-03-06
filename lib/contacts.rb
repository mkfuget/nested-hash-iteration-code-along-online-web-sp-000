require 'pry'

contacts = {
  "Jon Snow" => {
    name: "Jon",
    email: "jon_snow@thewall.we",
    favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  }
}
  
def remove_strawberry(contacts)
  contacts.each do |key, value|
    if(key == "Freddy Mercury")
      value.each do |key_inner, value_inner|
        if(key_inner == :favorite_ice_cream_flavors)
          value_inner.delete("strawberry")
        end
      end
    end
  end
end

remove_strawberry(contacts)