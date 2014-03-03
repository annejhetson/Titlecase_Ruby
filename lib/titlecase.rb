def title_case(sentence)
  split_word = sentence.downcase.split
  words_not_capitalized = ["and", "a", "an", "the", "about", "in", "on", "at", "between", "is", "for"]
  final = []

  split_word.each do |word|

    if (words_not_capitalized.include?(word))
      final << word.downcase
    else
      final << word.capitalize
      
    end
  end
  final.join(' ').slice(0,1).upcase + final.join(' ').slice(1..-1)
end

