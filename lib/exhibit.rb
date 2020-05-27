class Exhibit
  attr_reader :name, :cost

  def initialize(info)
    @name = info[:name]
    @cost = 0
  end

end
