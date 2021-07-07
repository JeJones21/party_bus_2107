class Bus
  attr_reader :name,
              :capacity,
              :passengers

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger(human)
    @passengers << human
  end

  def yell_at_passengers
    @passengers.map do |passenger|
      passenger.upcase
    end
  end

  def number_of_passengers
    @passengers.length
  end

  def over_capacity?
    if @passengers.length <= 4
      false
    else
      true 
    end
  end



end
