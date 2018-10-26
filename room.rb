class Room

  attr_reader :name, :guests, :song_list, :capacity

  attr_writer :guests

  def initialize(name, guests, song_list, capacity)
    @name = name
    @guests = guests
    @song_list = song_list
    @capacity = capacity
  end

  def check_in_guest(guest)
    @guests << guest
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def add_song_to_song_list(song)
    @song_list << song
  end

end
