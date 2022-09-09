require 'digest/sha2'

password = 'dfgy1996'
salt = rand(36**8).to_s(36)
shadow_hash = password.crypt("$6$"+salt)
puts shadow_hash