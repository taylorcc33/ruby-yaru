def list
  file = File.read('./db/db.json')
  data_hash = JSON.parse(file)

  puts data_hash
end