require 'test_helper'

describe Enumerable do
  it 'natural sorts' do
    assert_equal ['9m', '10m'], ['10m', '9m'].natural_sort
  end

  it 'natural sorts in place' do
    actual = ['10m', '9m']
    actual.natural_sort!
    assert_equal ['9m', '10m'], actual
  end

  it 'natural sorts with a block' do
    actual = []
    actual << OpenStruct.new(name: 'hello world')
    actual << OpenStruct.new(name: 'hello world 2')
    actual << OpenStruct.new(name: 'hello 2 world')
    assert_equal ['hello 2 world', 'hello world', 'hello world 2'],
                 actual.natural_sort_by(&:name).map(&:name)
  end

  it 'natural sorts with a block in place' do
    actual = []
    actual << OpenStruct.new(name: 'hello world')
    actual << OpenStruct.new(name: 'hello world 2')
    actual << OpenStruct.new(name: 'hello 2 world')
    actual.natural_sort_by!(&:name)
    assert_equal ['hello 2 world', 'hello world', 'hello world 2'],
                 actual.map(&:name)
  end

end
