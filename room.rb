class Room

  attr_reader :name, :guests, :song_list, :capacity, :entry_fee, :till

  attr_writer :guests, :capacity, :till

  def initialize(name, guests, song_list, capacity, entry_fee, till)
    @name = name
    @guests = guests
    @song_list = song_list
    @capacity = capacity
    @entry_fee = entry_fee
    @till = till
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

  def guest_pays_entry_fee(guest_name, entry_fee)
    guest_name.pay_entry_fee(@entry_fee)
    @till += @entry_fee
  end

  def favourite_song_is_on_song_list(guest)
    @song_list.any? { |song| song == guest}
      return "This is my jam!"
  end


end
