class Calc

  @@instance = Calc.new()
  def self.getInstance
    return @@instance
  end
  private_class_method :new

  def extention(first, second, operation)

    #load input values
    input = Input.getInstance
    input.first = first
    input.second = second
    input.operation = operation

    factory = FactoryType.getInstance #get class obj
    @result = factory.getObj.result #get result
    return self
  end

#outputs
  def to_p  #output in p
    p @result.to_s
  end

  def to_puts  #output puts
     puts @result.to_s
  end

  def output
    @result.to_s
  end

end
