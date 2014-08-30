class Query
  attr_reader :name1, :name2, :degree
  attr_writer :name1, :name2, :degree
  
  def initialize
    
  end
  
  def initialize(name1, name2)
    @degree = -1
    @name1 = name1
    @name2 = name2
  end
  
  
end