require 'open-uri'
require 'uri'
require 'fileutils'

# 1. Check if both the URL and the local destination path were provided
if ARGV.length != 2
  puts "Usage: 9-download_file.rb URL LOCAL_FILE_PATH"
  exit 1
end

url = ARGV[0]
local_path = ARGV[1]

# 2. Extract the directory path from the destination filename and ensure it exists
dir_path = File.dirname(local_path)
FileUtils.mkdir_p(dir_path) unless dir_path == '.'

puts "Downloading file from #{url}..."

begin
  # 3. Open the remote URL stream and stream-write it block-by-block to the local file path
  URI.open(url) do |remote_file|
    File.open(local_path, 'wb') do |local_file|
      local_file.write(remote_file.read)
    end
  end
  
  puts "File downloaded and saved to #{local_path}."
rescue => e
  puts "Error downloading file: #{e.message}"
  exit 1
end
