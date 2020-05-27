require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require 'pry'


class ExhibitTest < MiniTest::Test

  def test_it_exists
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    binding.pry
    assert_instance_of Exhibit, exhibit
  end

  def test_it_has_attributes
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    assert_equal "Gems and Minerals", exhibit.name
    assert_equal 0, exhibit.cost
  end

end
