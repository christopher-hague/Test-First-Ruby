def translate(str)
  final_str = str.split(" ").map do |word|
    translate_word(word)
  end
  final_str.join(" ")
end

def translate_word(word)
  vowels = %w[a e i o u]

  if vowels.include?(word[0])
    # if a word begins with a vowel, add "ay" to the end of it
    "#{word}ay"
  else
    # phoneme_end tracks the index, which will determine the indices at
    # which the interpolation below will start/finish
    phoneme_end = 0
    until vowels.include?(word[phoneme_end])
      phoneme_end += 1
    end

    phoneme_end += 1 if word[phoneme_end - 1] == "q"
    "#{word[phoneme_end..-1]}#{word[0...phoneme_end]}ay"
  end
end
