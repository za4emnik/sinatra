class Input #class for input data

  attr_accessor :first, :second, :operation

  #singleton
  @@instance = Input.new()
  def self.getInstance
    return @@instance
  end
  private_class_method :new

end
