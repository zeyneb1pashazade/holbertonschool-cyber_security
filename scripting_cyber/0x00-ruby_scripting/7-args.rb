def print_arguments
  # 1. Check if the ARGV array is completely empty
  if ARGV.empty?
    puts "No arguments provided."
  else
    # 2. Iterate through each argument with its 0-indexed position
    ARGV.each_with_index do |arg, index|
      # 3. Add 1 to the index so it displays a human-readable 1-indexed list
      puts "#{index + 1}. #{arg}"
    end
  end
end
