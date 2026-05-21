require 'digest'

# 1. Validate that exactly two arguments are provided
if ARGV.length != 2
  puts "Usage: 10-password_cracked.rb HASHED_PASSWORD DICTIONARY_FILE"
  exit 1
end

target_hash = ARGV[0].downcase
dictionary_file = ARGV[1]

# 2. Check if the dictionary file actually exists before trying to read it
unless File.exist?(dictionary_file)
  puts "Error: Dictionary file '#{dictionary_file}' not found."
  exit 1
end

password_found = nil

# 3. Read the dictionary file line by line to minimize memory footprint
File.foreach(dictionary_file) do |line|
  # Strip whitespaces and newline characters (\n, \r) from the word
  word = line.chomp
  
  # Calculate the SHA-256 hash of the current word
  current_hash = Digest::SHA256.hexdigest(word)
  
  # If it matches our target hash, save the word and break out of the loop
  if current_hash == target_hash
    password_found = word
    break
  end
end

# 4. Output the results matching your required test cases
if password_found
  puts "Password found: #{password_found}"
else
  puts "Password not found in dictionary."
end
