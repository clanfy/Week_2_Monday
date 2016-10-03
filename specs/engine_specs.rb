require('minitest/autorun')
require('minitest/rg')
require_relative('../engine')

class TestEngine < Minitest::Test

  def setup
    @turbo = Engine.new(25, 10)
    @hybrid = Engine.new(15, 2)
  end

  def test_engine_goes_fast
    assert_equal(25,@turbo.engine_goes_fast)
  end

  def test_engine_uses_fuel
    assert_equal(2, @hybrid.engine_uses_fuel)
  end

end 