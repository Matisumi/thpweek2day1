def jean_michel_data (corpus, dictionary)
	
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

corpus = "If you go down below the lowest down of below you'll find the partner"

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]	
puts jean_michel_data(corpus, dictionary)
