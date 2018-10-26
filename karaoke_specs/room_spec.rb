require("minitest/autorun")
require('minitest/rg')
require_relative("../room")
require_relative("../guest")
require_relative("../song")


class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Axl Rose")
    @guest2 = Guest.new("Lady Gaga")
    @guest3 = Guest.new("Freddie Mercury")

    guests = []

    @song1 = Song.new("Paradise City")
    @song2 = Song.new("Song 2")
    @song3 = Song.new("Suspicious Minds")

    song_list = []

    @room1 = Room.new("GNR room", guests, song_list)

  end

  def test_room_name
  expected = "GNR room"
  actual = @room1.name
  assert_equal(expected, actual)
  end

end
