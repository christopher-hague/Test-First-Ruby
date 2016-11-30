class Book
  attr_accessor :title

  exceptions = ["and"]

  def title=(book)
    exceptions = ["and", "in", "the", "of", "a", "an"]
    @title = book.split(" ").map.with_index do |word, i|
      if exceptions.include?(word) && i != 0
        word
      else
        word.capitalize
      end
    end.join(" ")
  end

end
