require("minitest/autorun")
require('minitest/rg')
require_relative("../guest")


class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Axl Rose", 10)
    @guest2 = Guest.new("Lady Gaga", 12)
    @guest3 = Guest.new("Freddie Mercury", 20)
  end


  def test_get_guest_name
    expected = "Freddie Mercury"
    actual = @guest3.name
    assert_equal(expected, actual)
  end

  def test_guest_cash
    expected = 12
    actual = @guest2.wallet
    assert_equal(expected, actual)
  end

  def test_pay_entry_fee
    expected = 7.50
    actual = @guest1.pay_entry_fee(2.50)
    assert_equal(expected, actual)
  end


end
