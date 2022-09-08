file_name = ARGV[0]

file = File.open(file_name,'rb')
file2hex = file.read.each_byte.map{|b| '\x%02x' % b}.join

puts file2hex