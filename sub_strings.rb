dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sentence = "Howdy partner, sit down! How's it going?"

def substrings(sentence, dictionary)
    counter = {}
    split_sentence = sentence.scan(/[\w'-]+|[.,!?']+/).each do |word|
        word = word.downcase
        puts word
        dictionary.each do |check|
            if (word.include? check)
                if counter.has_key?(check)
                    counter[check] += 1
                else
                    counter[check] = 1
                end
            end
        end
    end
    return counter
end

puts substrings(sentence, dictionary)

