def measure(repeats = 1, &prc)
  started = Time.now # gets current time
  repeats.times { prc.call } # calls block num of times equal to repeats
  (Time.now - started) / repeats # subtracts start time from current
  # time and divides it by the num of repeats
end
