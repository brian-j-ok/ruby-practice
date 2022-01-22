def substrings(temp_string, substring_array)
    result = Hash[substring_array.collect { |word| [word, 0]}]
    temp_string.downcase!
    
    puts result

    substring_array.each do |word|
        temp_string.split(" ").each do |tempWord|
            if tempWord.include? (word)
                result[word] += 1
            end
        end
    end

    puts result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)