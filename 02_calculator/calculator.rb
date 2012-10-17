def add num1, num2
  num1 + num2
end

def subtract num1, num2
  num1 - num2
end

def sum array
  array.inject(0, :+)
end

def multiply *nums
  if nums.size < 2
    raise "not enough arguments"
  end
  nums.inject(1, :*)
end

def pow num1, num2
  num1 ** num2
end

def fac num
  num <= 1 ? 1 : num * fac(num - 1)
end