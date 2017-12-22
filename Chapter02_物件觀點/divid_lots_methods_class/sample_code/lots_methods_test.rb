require_relative 'src/lots_methods'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/focus'

class LotsMethodsTest < Minitest::Test
  include RubyLearning
  def setup
    @lm = LotsMethods.new
  end

  def test_method_in_lots_methods_class
    assert_equal 1, LotsMethods.method_1
    assert_equal 'a', @lm.method_a
  end

  def test_method_in_class_method_module
    assert_equal 'cmm_11', LotsMethods.cmm_11
    assert_equal 'cmm_21', LotsMethods.cmm_21   
  end

  def test_method_in_instance_method_enhancement
    assert_equal 'imm_a1', @lm.imm_a1
    assert_equal 'imm_b1', @lm.imm_b1
  end
end

# sample_code folder
# ruby -Ilib:test lots_methods_test.rb
# Should be all passed.