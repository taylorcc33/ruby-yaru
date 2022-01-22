def list
  file = File.read('./db/db.json')
  data_hash = JSON.parse(file)

  item_number = 1

  data_hash.map do |item|
    puts "#{item_number}. #{item["title"]} - #{item["complete"]}"
    item_number += 1
  end
end