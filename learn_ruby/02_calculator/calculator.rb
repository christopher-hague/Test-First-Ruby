def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  arr.reduce(0) { |sum, num| sum += num }
end

def multiply(arr)
  arr.reduce(1) { |total, num| total *= num }
end

def power(num1, num2)
  num1**num2
end

def factorial(num)
  return 0 if num == 0

  total = 1

  (1..num).each do |n|
    total *= n
  end

  total
end
