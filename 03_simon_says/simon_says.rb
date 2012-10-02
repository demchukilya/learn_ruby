def echo str
  str
end

def shout str
  str.upcase
end

def repeat str, num = 2
  Array.new(num, str).join(" ")
end

def start_of_word str, num
  str[0...num]
end

def first_word str
  str.split(/\b/)[0]
end

def titleize str
  str.gsub(/\b\w/){ |substr| substr.upcase }.gsub(/\s(And|The|Over)\b/){ |substr| substr.downcase }
end