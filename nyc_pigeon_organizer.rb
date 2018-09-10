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
  new_pigeon_dict = {}
  data.each do |attribute_name, attribute_data|
    attribute_data.each do |attribute_description, pigeon_name|
      pigeon_name.each do |name|
        if new_pigeon_dict.keys.empty? == true
          new_pigeon_dict[name] = ""
        elsif new_pigeon_dict.keys.include? name == false
          puts "hi"
          second_layer_dict = {}
          second_layer_dict[attribute_name] = attribute_description.to_s
          new_pigeon_dict[name] = second_layer_dict
        elsif new_pigeon_dict.keys.include? name == true
          second_layer_dict = {}
          second_layer_dict[attribute_name] = attribute_description.to_s
          new_pigeon_dict[name] = second_layer_dict
          puts new_pigeon_dict
        else
          puts "whoops"
        end 

      end 
    end 
  end
  new_pigeon_dict
end
  

puts nyc_pigeon_organizer(pigeon_data)
