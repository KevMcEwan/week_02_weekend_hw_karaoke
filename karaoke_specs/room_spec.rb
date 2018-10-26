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

    @guests = []

    @song1 = Song.new("Paradise City")
    @song2 = Song.new("Song 2")
    @song3 = Song.new("Suspicious Minds")

    @song_list = []

    @room1 = Room.new("GNR room", @guests, @song_list, 6)

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




  def test_guest_has_checked_in
    expected = true
    @room1.check_in_guest(@guest1.name)
    actual = @room1.guests.any? { |guest| guest == "Axl Rose"}
    assert_equal(expected, actual)
  end


  def test_check_out_guest
    expected = []
    @room1.guests << @guest2
    @room1.check_out_guest(@guest2)
    actual = @room1.guests
    assert_equal(expected, actual)
  end

  def test_add_song_to_song_list
    expected = true
    @room1.add_song_to_song_list(@song2.name)
    actual = @room1.song_list.any? { |song| song == "Song 2"}
    assert_equal(expected, actual)
  end

  def test_count_song_list
    expected = 2
    @room1.add_song_to_song_list(@song1.name)
    @room1.add_song_to_song_list(@song2.name)
    actual = @room1.song_list.count
    assert_equal(expected, actual)
  end

  def test_room_capacity
    expected = 6
    actual = @room1.capacity
    assert_equal(expected, actual)
  end






end
