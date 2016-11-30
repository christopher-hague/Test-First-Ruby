def reverser(&prc)
  sentence = prc.call
  sentence.split(" ").map { |word| word.reverse }.join(" ")
end

def adder(add_val = 1, &prc)
  num = prc.call
  num + add_val
end

def repeater(iterations = 1, &prc)
  iterations.times { prc.call }
end
