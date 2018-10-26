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

  def test_get_song_list
    expected = []
    actual = @room1.song_list
    assert_equal(expected, actual)
  end

  def test_count_songs_in_song_list
    expected = 0
    actual = @room1.song_list.count
    assert_equal(expected, actual)
  end

  def test_get_guest_list
    expected = []
    actual = @room1.guests
    assert_equal(expected, actual)
  end

  def test_count_guests_in_guest_list
    expected = 0
    actual = @room1.guests.count
    assert_equal(expected, actual)
  end



end
