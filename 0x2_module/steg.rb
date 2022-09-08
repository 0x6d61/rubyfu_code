file1,file2 = ARGV

sec_file = File.read file1
nor_file = File.read file2

sep = '*-------------------------*'

one_file = [nor_file,sep,sec_file]

File.open("steg.png",'wb') do |stg|
    one_file.each do |f|
        stg.puts f
    end
end

recov_file = File.read('steg.png').force_encoding("BINARY").split(sep).last
File.open('hola.pdf','wb') {|file|file.print recov_file}