def add(item)
  new_item = {
    title: "#{item}",
    complete: false
  }

  file = File.read('./db/db.json')
  data_hash = JSON.parse(file)

  data_hash << new_item

  File.write('./db/db.json', JSON.dump(data_hash))
end