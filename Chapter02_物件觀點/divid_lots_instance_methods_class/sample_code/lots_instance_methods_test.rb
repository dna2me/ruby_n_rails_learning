require_relative 'src/lots_instance_methods'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/focus'

class LotsInstanceMethodsTest < Minitest::Test
  include RubyLearning
  def setup
    @lim = LotsInstanceMethods.new
  end

  def test_method_in_class
    assert_equal 1, @lim.method_1
  end

  def test_method_in_module_extends
    assert_equal 'a', @lim.extends_method_a
  end

  def test_method_in_module_enhancement
    assert_equal 'alpha', @lim.enhancement_alpha
  end
end

# sample_code folder
# ruby -Ilib:test lots_instance_methods_test.rb
# Should be all passed.