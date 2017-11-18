# -*- coding: utf-8 -*-

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
			
to_convert = 'was haste gegen jodel verstehst einfach kein studentenhumor 😂😂😂👌👌👌 letztens wieder bafög bekommen soooo witzig 👌👌 leute gebt mir upvotes in dem ich aus witzebüchern aus den 90ern abschreibe und drittklassige tweets von c-promis recycle studieren ist wie arbeitslos sein nur das die eltern stolz sind HAHAHAHA 👋👋'
File.open('nice.txt', 'w') { |f| f.write convert(dict, to_convert) }

