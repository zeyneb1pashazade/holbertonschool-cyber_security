require 'json'

def count_user_ids(path)
  # 1. Read the raw text from the file and parse it into a Ruby Array of Hashes
  file_content = File.read(path)
  data = JSON.parse(file_content)

  # 2. Create a hash to hold the counts, defaulting every new key to a value of 0
  id_counts = Hash.new(0)

  # 3. Loop through each post/item and increment the counter for that specific userId
  data.each do |item|
    user_id = item['userId']
    id_counts[user_id] += 1 if user_id
  end

  # 4. Print the results in the exact format: "userId: count"
  id_counts.each do |user_id, count|
    puts "#{user_id}: #{count}"
  end
end
