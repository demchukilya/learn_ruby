def translate str
  str.gsub(/\b\w+\b/) {|substr|
    substrend=substr.slice!(/\b(qu|[^aeiou])+/)
    "#{substr}#{substrend}ay"
  }
end