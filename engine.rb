class Engine

  attr_reader(:speed, :fuel)

  def initialize(speed, fuel )
    @speed = speed
    @fuel = fuel
  end

  def engine_goes_fast
    return @speed
  end

  def engine_uses_fuel
    return @fuel
  end


end