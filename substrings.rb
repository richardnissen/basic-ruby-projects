def substrings(string, dictionary)
    dictionary.reduce(Hash.new(0)) do |result, word|
        result[word] = string.downcase.scan(word).count if string.downcase.include?(word)
        result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)