require_relative 'extends'
require_relative 'enhancement'

module RubyLearning
  # This class only has class methods.
  class LotsClassMethods
    extend RubyLearning::Extends
    extend RubyLearning::Enhancement

    def self.method_1
      1
    end

    def self.method_2
      2
    end

    def self.method_3
      3
    end
  end
end
