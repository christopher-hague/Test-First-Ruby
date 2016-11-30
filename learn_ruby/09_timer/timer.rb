class Timer
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
    hours = seconds / 3600
    minutes = (seconds / 60) % 60
    secs = seconds  % 60
    (check_num(hours) + ":" + check_num(minutes) + ":" + check_num(secs))
  end

  def check_num(num)
    if num < 10
      "0#{num}"
    else
      "#{num}"
    end
  end
end
