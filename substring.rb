
def substrings(string, dictionary)
  matches = Array.new()
  dictionary.each do |word|
    string.split(' ').each do |segment|
      if segment.downcase.include?(word.downcase) == true
        matches.push(word)
      end
    end
  end
  return matched_words(matches)
end
# occurrence
def matched_words(matches)
  matches.reduce(Hash.new(0)) do |word, occurrence|
    word[occurrence] += 1
    word
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)