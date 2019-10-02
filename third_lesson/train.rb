class Train
  attr_accessor :speed
  attr_reader :cars_quantity

  def initialize(number, type, cars_quantity)
    @number = number
    @type = type
    @cars_quantity = cars_quantity
    @speed = 0
  end

  def stop
    @speed = 0
  end

  def add_car
    if @speed == 0
      @cars_quantity +=1
    end
  end

  def del_car
    if @speed == 0 && @cars_quantity > 0
      @cars_quantity -=1
    end
  end

  def get_route(route)
    @route = route 
    @route.station_list[0].arrived_trains(self)
    @element_number = 0 
  end

  def current_station
    @route.station_list[@element_number]
  end

  def next_station
     if current_station != @route.station_list.last
        @route.station_list[@element_number + 1]
     else
        puts "текущая остановка является последней остановкой маршрута"  
     end
  end

  def previous_station
    if current_station != @route.station_list.first
      @route.station_list[@element_number - 1]
    else
      puts "текущая остановка является первой остановкой маршрута"  
    end
  end

  def go_to_prev 
    if current_station != @route.station_list.last
      current_station.depart_train(self) #кода дело доходит до этого метода, возникает ошибка: undefined method `delete' for #<Train:0x007f9b7609cce8>
                                         #то есть видимо не получается удадить объект класса Train из массива, не понимаю почему
                                         #попробовала создать два объекта поезда, один успешно отправился на след. станицию, второй при вызове метода выдал такую же ошибку
                                         
      next_station.arrived_trains(self)
      @element_number += 1
    else
      puts "текущая остановка является последней остановкой маршрута" 
    end
  end


  def go_to_prev
    if current_station != @route.station_list.first
      current_station.depart_train(self)
      previous_station.arrived_trains(self) #для объекта для которого успешно вызвался go_to_prev вызвала этот метод,
                                            #возникла ошибка undefined method `<<' for #<Train:0x007f8f130673a0>
                                            #не могу понять проблема со Station или с Train
      @element_number -= 1
    else
      puts "текущая остановка является первой остановкой маршрута"  
    end
  end
end
