class Dictionary
  def initialize
    @vals = {}
  end

  def entries
    @vals
  end

  def add dif
    dif.class==Hash ? @vals.merge!(dif) : @vals.merge!(dif => nil)
  end

  def keywords
    @vals.keys.sort
  end

  def include? key
    @vals.member?(key)
  end

  def find str
    @vals.select {|key, val| key =~ /^#{str}/}
  end

  def printable
    keywords.inject([]) {|res, key| res << "[#{key}] \"#{@vals[key]}\""} .join("\n")
  end

end