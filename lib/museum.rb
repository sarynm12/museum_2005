class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    @exhibits.find_all do |exhibit|
      patron.interests.include?(exhibit.name)
    end
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    list = {}
    exhibits.each do |exhibit|

      interested_patrons = patrons.find_all { |patron| patron.interests.include?(exhibit.name) }
      list[exhibit] = interested_patrons
    end
    list
  end

  def ticket_lottery_contestants(exhibit)
    lottery_contestants = []
    @patrons.each do |patron|
      lottery_contestants << patron if patron.interests.include?(exhibit.name)
    end
    lottery_contestants
  end

  def draw_lottery_winner(exhibit)
    lottery_contestants = []
    @patrons.each do |patron|
      lottery_contestants << patron if patron.interests.include?(exhibit.name)
    end 
    lottery_contestants.sample
  end

end
