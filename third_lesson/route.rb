class Route
attr_reader :station_list, :first_station, :last_sation

  def initialize (first_station,last_sation)
    @first_station = first_station
    @last_sation = last_sation
    @station_list = [@first_station, @last_sation]
  end

  def add_station(station)
    @station_list.insert(-2,station)
  end

  def del_station(station)
    @station_list.delete(station)
  end

  def show_station_list
    puts @station_list
    @station_list
  end
end

