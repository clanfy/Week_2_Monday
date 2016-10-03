require('minitest/autorun')
require('minitest/rg')
require_relative('../car')
require_relative('../engine')


class TestCar < Minitest::Test

def setup
@turbo = Engine.new(25, 10)
@hybrid = Engine.new(15, 2)
@minty = Car.new("Volkswagon", 100, 0)
@caroline = Car.new("Mercedes", 100, 0)
@dougall = Car.new("Volvo", 100, 0)
end

def test_type
  assert_equal("Mercedes", @caroline.type)
end

def test_fuel_level
  assert_equal(100, @minty.fuel_level)
end

def test_speed
  assert_equal(0, @dougall.speed)
end

def test_accelerate_speed_and_reduce_fuel
  assert_equal([10,95], @minty.accelerate_speed_and_reduce_fuel)
end

def test_brake_reduce_speed
  assert_equal(0, @caroline.brake_reduce_speed)
end


end