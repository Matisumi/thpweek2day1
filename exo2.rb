def chiffre_de_cesar (str, mod)
	cryptd = ''
	puts str
	str.each_char do |char|
		asci = char.ord
		puts asci
		if asci < 91 && asci > 64
			asci = asci + mod
			while asci > 90
				asci = asci - 26
			end
			while asci < 65 
				asci = asci + 26
			end
		
		elsif (asci < 123 && asci > 96)
			asci = asci + mod
			while asci > 122
				asci = asci - 26
			end
			while asci < 97
				asci = asci + 26
			end
		end
		cryptd = cryptd + asci.chr
	end
	
	return cryptd;
end
		
	
puts chiffre_de_cesar("Ima supa banana!", 57)	



