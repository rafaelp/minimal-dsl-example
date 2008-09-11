require 'parser.rb'

puts "Parsing valid config file...\n"
config = MinimalDsl.load('valid_config.rb')
puts "appname: #{config.appname}\n"
puts "root-path: #{config.root_path}\n"
puts "images_path: #{config.images_path}\n"
puts "title: #{config.title}\n"

puts "\n\n";

puts "Parsing invalid config file...\n"
config = MinimalDsl.load('invalid_config.rb') # Will raise error
