require 'readline'

trap('INT', 'SIG_IGN')

CMDS = [ 'help', 'rubyfu', 'ls', 'exit' ].sort


completion = 
    proc do |str|
      case 
      when Readline.line_buffer =~ /help.*/i
    puts "Available commands:\n" + "#{CMDS.join("\t")}"
      when Readline.line_buffer =~ /rubyfu.*/i
    puts "Rubyfu, where Ruby goes evil!"
      when Readline.line_buffer =~ /ls.*/i
    puts `ls`
      when Readline.line_buffer =~ /exit.*/i
    puts 'Exiting..'
    exit 0
      else
    CMDS.grep( /^#{Regexp.escape(str)}/i ) unless str.nil?
      end
    end


Readline.completion_proc = completion
Readline.completion_append_character = ' '

while line = Readline.readline('-> ', true)
  puts completion.call
  break if line =~ /^quit.*/i or line =~ /^exit.*/i
end
