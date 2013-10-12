require_relative '../test_helper'

describe ArrayDecay do
  it 'should create a new method on Array' do
    assert_respond_to [], :decay!
  end

  it 'should cause the array to mutate when iterated over' do
    original = [:foo, :bar, :baz]
    original.decay!.map(&:to_s)
    assert_empty original
  end
end
