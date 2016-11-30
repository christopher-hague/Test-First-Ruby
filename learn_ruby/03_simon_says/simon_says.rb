def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, repeats = 2)
  result = []
  repeats.times { |n| result << str }
  result.join(" ")
end

def start_of_word(str, i)
  result = ""
  (0...i).each { |n| result << str[n] }
  result
end

def first_word(str)
  str.split(" ")[0]
end

def titleize(str)
  little_words = ["and", "the", "over"]

  str.split(" ").map.each_with_index do |word, i|
    if little_words.include?(word) && i != 0
      word
    else
      word.capitalize
    end
  end.join(" ")

end
