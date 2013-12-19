require 'test_helper'

describe 'SortAuthority Benchmark' do
  bench_performance_linear '#natural_sort' do |n|
    ary = ['x1'] * n
    ary.natural_sort
  end

  bench_performance_linear '#natural_sort_by' do |n|
    ary = [OpenStruct.new(name: 'x1')] * n
    ary.natural_sort_by(&:name)
  end
end
