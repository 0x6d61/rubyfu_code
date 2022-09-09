require 'digest'
puts Digest::MD5.hexdigest 'P@ssw0rd'

puts Digest::SHA1.hexdigest 'P@ssw0rd'

# 1
sha2_256 = Digest::SHA2.new(bitlen = 256) # bitlen could be 256, 384, 512
puts sha2_256.hexdigest 'P@ssw0rd'

# 2
puts Digest::SHA2.new(bitlen = 256).hexdigest 'P@ssw0rd'