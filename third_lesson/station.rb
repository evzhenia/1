class Station 
  attr_reader :name

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrive_train(train)
    @trains << train
  end

  def show_trains
    @trains
  end

  def depart_train(train)
    @trains.delete(train)
  end

  def show_trains_by_type(type)
    @trains.each { |train| return train if train.type == type  } 
  end
end
