class Fixnum
  # Create a var that stores each unique digit/num and each unique
  # magnitude
  Ones = {
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine"
  }

  Teens = {
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen"
  }

  Tens = {
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety"
  }

  Magnitudes = {
    100 => "hundred",
    1000 => "thousand",
    1_000_000 => "million",
    1_000_000_000 => "billion",
    1_000_000_000_000 => "trillion"
  }

  def in_words
    # if less than 10 or 20, return apprpriate key
    if self < 10
      Ones[self]
    elsif self < 20
      Teens[self]
    elsif self < 100
      # if less than 100, determine the appropriate tens val
      tens_word = Tens[(self / 10) * 10]
      # if the num is not divisible by 10, use mod to find the remainder
      # of num / 10 (since we already have the tens val)
      if self % 10 != 0
        tens_word + " " + (self % 10).in_words
      else
        # if divisible by 10, return corresponding tens string
        tens_word
      end
    else
      # the num/self magnitude is determined using find_magnitude
      magnitude = find_magnitude
      mag_words = (self / magnitude).in_words + " " + Magnitudes[magnitude]
      if self % magnitude != 0
        mag_words + " " + (self % magnitude).in_words
      else
        mag_words
      end
    end
  end

  def find_magnitude
    # iterates over Magnitudes var. #take_while will push each value
    # stored in the Magnitudes hash into a new array
    # as long as the current magnitude is less than or equal to num/self,
    # and then return the last element in that array.
    Magnitudes.keys.take_while { |magnitude| magnitude <= self }.last
  end

end
