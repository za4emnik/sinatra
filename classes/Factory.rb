class FactoryType #factory class

  #singleton
  @@instance = FactoryType.new()
  def self.getInstance
    return @@instance
  end
  private_class_method :new

  def getObj #get new object
    case Input.getInstance.operation.to_s
  	when 'plus'
  	  Plus.new
  	when 'minus'
  	   Minus.new
  	when 'div'
  	  Div.new
  	when 'mult'
  	  Mult.new
  	else
  	  puts "unknow type"
  	end
  end

end
