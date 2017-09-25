require 'listen'
listener = Listen.to('_posts') do |modified|
  puts modified
  File.open(modified.last).each do |line|
    puts line if line.start_with?("tags:")
  end
end
listener.start
sleep
