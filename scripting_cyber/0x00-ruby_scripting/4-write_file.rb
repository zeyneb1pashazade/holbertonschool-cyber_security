require 'json'

def merge_json_files(file1_path, file2_path)
  # 1. Read and parse the source file (file1)
  file1_content = File.read(file1_path)
  data1 = JSON.parse(file1_content)

  # 2. Read and parse the destination file (file2)
  file2_content = File.read(file2_path)
  data2 = JSON.parse(file2_content)

  # 3. Combine the two arrays
  # This appends all elements of data1 into data2
  merged_data = data2 + data1

  # 4. Write the combined data back into the destination file (file2)
  # JSON.pretty_generate ensures the output file is cleanly formatted
  File.open(file2_path, 'w') do |f|
    f.write(JSON.pretty_generate(merged_data))
  end
end
