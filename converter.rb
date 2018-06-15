# -*- coding: utf-8 -*-

require 'optparse'

def convert dict, str
	ret = ''
	str.split('').each { |c| if dict.has_key?(c.downcase) then ret += dict[c.downcase] else ret += c end}
	ret
end

dict = { 	'a' => '🅰',
          'b' => '🅱',
          'c' => '©',
          'd' => '▷',
          'e' => 'ℇ',
          'f' => '🎏',
          'g' => 'ḡ',
          'h' => '♓',
          'i' => 'ℹ',
          'j' => 'ℑ',
          'k' => 'ᶄ',
          'l' => '👢',
          'm' => 'Ⓜ',
          'n' => '♑',
          'o' => '🅾',
          'p' => '🅿',
          'q' => 'ℚ',
          'r' => '®',
          's' => '💲',
          't' => '♈',
          'u' => '℧',
          'v' => '⋁',
          'w' => '⩖',
          'x' => '❌',
          'y' => 'ℽ',
          'z' => '💤',
          '0' => '0⃣',
          '1' => '1⃣',
          '2' => '2⃣',
          '3' => '3⃣',
          '4' => '4⃣',
          '5' => '5⃣',
          '6' => '6⃣',
          '7' => '7⃣',
          '8' => '8⃣',
          '9' => '9⃣',
          '!' => '❗',
          '?' => '❓'}

options = {}
OptionParser.new do |opt|
	opt.on('-f FROM_FILE', '--from FROM_FILE') { |o| options[:from_file] = o}
	opt.on('-t TO_FILE', '--to TO_FILE') { |o| options[:to_file] = o }
end.parse!

in_stream = options[:from_file] ? File.open(options[:from_file], 'r') : $stdin
out_stream = options[:to_file] ? File.open(options[:to_file], 'w') : $stdout

in_stream.each do |line|
  out_stream.puts(convert dict, line)
end

in_stream.close
out_stream.close
