require_relative 'array_decay/version'

class Array
  def decay!
    ArrayDecay::Enumerator.new(self)
  end
end

module ArrayDecay
  class Enumerator
    include Enumerable

    attr_accessor :enumerator

    def initialize(enumerator)
      self.enumerator = enumerator
    end

    def each(&block)
      until enumerator.empty?
        block.call(enumerator.shift)
      end
    end
  end
end
