require_relative 'extends'
require_relative 'enhancement'

module RubyLearning
  # This class only has instance methods.
  class LotsInstanceMethods
    include RubyLearning::Extends
    include RubyLearning::Enhancement

    def method_1
      1
    end

    def method_2
      2
    end

    def method_3
      3
    end
  end
end
