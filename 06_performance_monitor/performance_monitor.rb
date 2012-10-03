def measure num = 1
  start = Time.now
  counter = num
  while counter > 0
    yield
    counter -= 1
  end
  (Time.now - start) / num
end