def get_file_as_string (filename)
	str = ''
	f = File.open(filename, "r")
	f.each_line do |line|
		str += line
	end
	return str
end


def check_spear (corpus, dictionary)
	frequencies = Hash.new(0)
	corps = corpus.downcase.split(' ')

	corps.each do |words|

		dictionary.each do |dico|

			if words.include? dico

				frequencies[dico] += 1
			end
		end
	end
	return frequencies
end

def split_whitespaces(str)
	res = str.downcase.split(/\n/)
	return res
end

shakespeare = get_file_as_string 'shakespeare.txt'

swearwords = get_file_as_string 'swearwords.txt'
swearwords = split_whitespaces swearwords
#puts swearwords

dictionary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

#puts check_spear(shakespeare,dictionary)
#puts "-----------------------------"
puts check_spear(shakespeare, swearwords)