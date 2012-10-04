class Timer
  def initialize
    @sec = 0
  end

  def seconds= num
    @sec = num
  end

  def seconds
    @sec
  end

  def put_2 num
    num < 10 ? "0#{num}" : num.to_s
  end

  def time_string
    "#{put_2 @sec / 3600}:#{put_2 @sec % 3600 / 60}:#{put_2 @sec % 60}"
  end
end