class RPNCalculator
  def initialize
    @akk=[]
  end

  def push num
    @akk.push(num)
  end

  def test num=2
    if @akk.size < num
      raise "calculator is empty"
    end
  end

  def plus
    test
    @akk.push(@akk.pop + @akk.pop)
  end

  def minus
    test
    @akk.push(@akk.pop - @akk.pop)
  end

  def times
    test
    @akk.push(@akk.pop * @akk.pop)
  end

  def divide
    test
    @akk.push(@akk.pop.to_f / @akk.pop)
  end

  def interpretation str
    if str =~ /\d+/
      str.to_f
    else
      case str
        when "+"
          :+
        when "-"
          :-
        when "*"
          :*
        when "/"
          :/
      end
    end
  end

  def tokens str
    str.split(/[^\d.\+\-\*\/]+/).collect { |val| interpretation val }
  end

  def evaluate str
    (tokens str).cycle(1) { |elem| if elem.class != Symbol
                                     push elem
                                   else
                                     case elem
                                       when :+
                                         plus
                                       when :-
                                         minus
                                       when :*
                                         times
                                       when :/
                                         divide
                                     end
                                   end }
    value
  end

  def value
    test 1
    @akk[-1]
  end

end