require_relative 'class_method_module_1'
require_relative 'class_method_module_2'
require_relative 'instance_method_module_a'
require_relative 'instance_method_module_b'

module RubyLearning
  class LotsMethods
    include RubyLearning::InstanceMethodModuleA
    include RubyLearning::InstanceMethodModuleB
    extend RubyLearning::ClassMethodModule1
    extend RubyLearning::ClassMethodModule2

    def self.method_1
      1
    end

    def self.method_2
      2
    end

    def method_a
      'a'
    end

    def method_b
      'b'
    end
  end
end
