require("minitest/autorun")
require('minitest/rg')
require_relative("../guest")


class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Axl Rose")
    @guest2 = Guest.new("Lady Gaga")
    @guest3 = Guest.new("Freddie Mercury")
  end


  def test_get_guest_name
    expected = "Freddie Mercury"
    actual = @guest3.name
    assert_equal(expected, actual)
  end


end
