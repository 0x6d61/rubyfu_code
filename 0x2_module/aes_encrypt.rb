require "openssl"

data = 'Rubyfu Secret Mission: Go Hack The World!'


cipher = OpenSSL::Cipher::AES.new('256-CBC')    
cipher.encrypt                  
puts cipher.random_key
key = cipher.random_key                        
iv = cipher.random_iv                        
encrypted = cipher.update(data) + cipher.final

decipher = OpenSSL::Cipher::AES.new('256-CBC')
decipher.decrypt
decipher.key = key
decipher.iv = iv
plain = decipher.update(encrypted) + decipher.final