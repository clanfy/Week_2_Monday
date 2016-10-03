class Car

attr_reader(:type, :fuel_level, :speed )

def initialize(type, fuel_level, speed)
  @type = type
  @fuel_level = fuel_level
  @speed = speed
end

def accelerate_speed_and_reduce_fuel
  increased_speed = @speed += 10
  reduced_fuel = @fuel_level -= 5
  acceleration_output = [increased_speed, reduced_fuel]
  return acceleration_output
end

def brake_reduce_speed
  if @speed > 0
    reduced_speed = @speed -= 10
  else
    reduced_speed = @speed
  end
  return reduced_speed
end


end