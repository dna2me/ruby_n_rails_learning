require_relative 'src/lots_class_methods'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/focus'

class LotsClassMethodsTest < Minitest::Test
  include RubyLearning
  def test_method_in_class
    assert_equal 1, LotsClassMethods.method_1
  end

  def test_method_in_module_extends
    assert_equal 'a', LotsClassMethods.extends_method_a
  end

  def test_method_in_module_enhancement
    assert_equal 'alpha', LotsClassMethods.enhancement_alpha
  end
end

# sample_code folder
# ruby -Ilib:test lots_class_methods_test.rb
# Should be all passed.