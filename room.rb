class Room

  attr_reader :name, :guests, :song_list

  attr_writer :guests

  def initialize(name, guests, song_list)
    @name = name
    @guests = guests
    @song_list = song_list
  end

  def check_in_guest(guest)
    @guests << guest
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end
  
end
