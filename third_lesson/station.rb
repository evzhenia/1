class Station 
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrived_trains(train)
    @trains << train
  end

  def show_trains
    @trains
  end

  def depart_train(train)
    @trains = @trains.delete(train)
  end

  def show_trains_by_type(type)
    trains.each { |train| return train if train.type == type  } 
  end
end

  
