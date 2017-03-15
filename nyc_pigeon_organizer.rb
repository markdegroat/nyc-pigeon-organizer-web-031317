pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  # write your code here!
  names_array = []
  data.each do |key, value|
    value.values.each do |name|
      if !(names_array.include?(name))
        names_array << name
      end
    end
  end
  names_array_uniq= names_array.flatten.uniq
  modified_hash = {}
  names_array_uniq.each do |name|
    modified_hash[name] = {
      color: [],
      gender: [],
      lives: []
    }
  end
  #puts modified_hash
  data.each do |key1, hash|
    hash.each do |key2, array|
      array.each do |name|
        modified_hash[name][key1] << key2.to_s
      end
    end
  end
modified_hash
end
#nyc_pigeon_organizer(pigeon_data)
