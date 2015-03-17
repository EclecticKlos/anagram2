# require_relative "/Users/BadMuthaFucka/Desktop/practice/anagram2/anagram-server-1-the-basics-challenge-master2/db/fixtures/words"
i = 0
File.open("/Users/BadMuthaFucka/Desktop/practice/anagram2/anagram-server-1-the-basics-challenge-master2/db/fixtures/words", "r") do |file|
    file.each_line do |this_word|
      Word.create(word: this_word)
      i+=1
      break if i > 99
    end
end