puts "Sentence to search through: "
text = gets.chomp
text_down = text.downcase

puts "Words to redact: "
redact = gets.chomp.downcase
redacted_words = redact.split(" ")

words = text.split(" ")
words_down = text_down.split(" ")

redacted_array = Array.new

words_down.each do |word|
    if redacted_words.include? word
        redacted_array.push("REDACTED ")
    else
        x = words_down.index(word)
        redacted_array.push(words[x] + " ")
    end
end

redacted_string = redacted_array.join
print "Complete sentence:"
puts
puts "#{redacted_string}"
