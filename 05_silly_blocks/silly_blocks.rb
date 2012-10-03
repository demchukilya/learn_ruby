def reverser
  yield.gsub(/\b\w+\b/) { |substr| substr.reverse }
end

def adder num = 1
  yield + num
end

def repeater num = 1
  while  num > 0
    yield
    num -= 1
  end
end