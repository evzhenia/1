class Train
  attr_reader :cars_quantity, :type, :speed

  def initialize(number, type, cars_quantity)
    @number = number
    @type = type
    @cars_quantity = cars_quantity
    @speed = 0
  end

  def stop
    @speed = 0
  end

  def set_speed(speed)
    @speed = speed if speed > 0
  end

  def add_car
    @cars_quantity +=1 if @speed.zero?
  end

  def del_car
    @cars_quantity -=1 if @speed.zero? && @cars_quantity > 0
  end

  def get_route(route)
    @route = route 
    @route.station_list[0].arrive_train(self)
    @element_number = 0 
  end

  def current_station
    @route.station_list[@element_number]
  end

  def next_station
     if current_station != @route.station_list.last
        @route.station_list[@element_number + 1]
     end
  end

  def previous_station
    if current_station != @route.station_list.first
      @route.station_list[@element_number - 1]
    end
  end

  def go_to_next
    if current_station != @route.station_list.last
      current_station.depart_train(self) 
      next_station.arrive_train(self)
      @element_number += 1
    end
  end


  def go_to_prev
    if current_station != @route.station_list.first
      current_station.depart_train(self)
      previous_station.arrive_train(self) 
      @element_number -= 1
    end
  end
end
