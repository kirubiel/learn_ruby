class Timer
  #write your code here
  def initialize(seconds = 0)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    @seconds = Time.at(seconds).gmtime.strftime("%H:%M:%S")
  end
end