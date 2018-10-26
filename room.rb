class Room

  attr_reader :name, :guests, :song_list, :capacity, :entry_fee

  attr_writer :guests, :capacity

  def initialize(name, guests, song_list, capacity, entry_fee)
    @name = name
    @guests = guests
    @song_list = song_list
    @capacity = capacity
    @entry_fee = entry_fee
  end

  def check_in_guest(guest)
    if @guests.count < capacity
      @guests << guest
    else
      return
    end
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def add_song_to_song_list(song)
    @song_list << song
  end

  def check_guest_present(guest_name)
    @guests.any? { |guest| guest == guest_name}
  end

end
