
def substrings(str,ary)
	substrings = {}
	words = str.downcase.split
	ary.each do |i|
		words.each do |j|
			if j.include?(i)
				if substrings.has_key?(i)
					substrings[i] += 1
				else
					substrings[i] = 1
				end
			end
		end
	end
	puts substrings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)