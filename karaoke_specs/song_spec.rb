require("minitest/autorun")
require('minitest/rg')
require_relative("../song")


class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Paradise City")
    @song2 = Song.new("Song 2")
    @song3 = Song.new("Suspicious Minds")
    songs = [@song1, @song2, @song3]
  end

  def test_find_song_name
    expected = "Paradise City"
    actual = @song1.name
    assert_equal(expected, actual)
  end

end
