class Book
  def title= str
    @tit=str.gsub(/\b\w/){ |substr| substr.upcase }.gsub(/\s(And|A|An|The|Over|In|Of)\b/){ |substr| substr.downcase }
  end

  def title
    @tit
  end

end