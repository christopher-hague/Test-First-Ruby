class RPNCalculator
  attr_accessor :calculator

  def initialize
      @calculator = []
      @value = nil
  end

  def plus
     raise "calculator is empty" if @calculator.length < 2
     @value = calculator[-1] + calculator[-2]
     2.times {@calculator.pop}
     @calculator << @value
  end

  def minus
    raise "calculator is empty" if @calculator.length < 2
    @value = calculator[-2] - calculator[-1]
    2.times { @calculator.pop }
    @calculator << @value
  end

  def times
     raise "calculator is empty" if @calculator.length < 2
     @value = calculator[-1] * calculator[-2]
     2.times {@calculator.pop}
     @calculator << @value
  end

  def divide
     raise "calculator is empty" if @calculator.length < 2
     @value = calculator[-2].to_f / calculator[-1]
     2.times {@calculator.pop}
     @calculator << @value
  end

  def push(number)
      calculator << number
  end

  def value
      @value
  end

end
