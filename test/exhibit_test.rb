require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require 'pry'


class ExhibitTest < MiniTest::Test

  def test_it_exists
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    assert_instance_of Exhibit, exhibit
  end

  def test_it_has_attributes
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    assert_equal "Gems and Minerals", exhibit.name
    assert_equal 0, exhibit.cost
  end

end



# ### Iteration 1
#
# Use TDD to create an `Exhibit` and a `Patron` class that respond to the following interaction pattern:
#
# ```ruby
# pry(main)> require './lib/exhibit'
# # => true
#
# pry(main)> require './lib/patron'
# # => true
#
# pry(main)> exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
# # => #<Exhibit:0x00007fcb13bd22d0...>
#
# pry(main)> exhibit.name
# # => "Gems and Minerals"
#
# pry(main)> exhibit.cost
# # => 0
#
# pry(main)> patron_1 = Patron.new("Bob", 20)
# # => #<Patron:0x00007fcb13b5c7d8...>
#
# pry(main)> patron_1.name
# # => "Bob"
#
# pry(main)> patron_1.spending_money
# # => 20
#
# pry(main)> patron_1.interests
# # => []
#
# pry(main)> patron_1.add_interest("Dead Sea Scrolls")
#
# pry(main)> patron_1.add_interest("Gems and Minerals")
#
# pry(main)> patron_1.interests
# # => ["Dead Sea Scrolls", "Gems and Minerals"]
# ```
