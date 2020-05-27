class Museum
  attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended = []
    recommended = @exhibits.each do |exhibit|
      if exhibit.name == patron.interests
        recommended << exhibit
      end
    end
  end
end
