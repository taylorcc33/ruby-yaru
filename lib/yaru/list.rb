def list
  file = File.read('./db/db.json')
  data_hash = JSON.parse(file)

  data_hash.map do |item|
    puts "#{item["title"]} - #{item["complete"]}"
  end
end