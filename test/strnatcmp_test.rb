require 'test_helper'

describe 'strnatcmp' do
  include SortAuthority

  it 'sorts two empty strings' do
    assert_equal 0, strnatcmp('', '')
  end

  it 'sorts two identical strings with letters' do
    assert_equal 0, strnatcmp('x', 'x')
  end

  it 'sorts two identical strings with letters and numbers' do
    assert_equal 0, strnatcmp('x1', 'x1')
  end

  it 'sorts letters (x < y)' do
    assert_equal -1, strnatcmp('x', 'y')
  end

  it 'sorts letters (y > x)' do
    assert_equal 1, strnatcmp('y', 'x')
  end

  it 'sorts letters and numbers (x1 < y1)' do
    assert_equal -1, strnatcmp('x1', 'y1')
  end

  it 'sorts letters and numbers (y1 > x1)' do
    assert_equal 1, strnatcmp('y1', 'x1')
  end

  it 'sorts letters and numbers (x1 < x2)' do
    assert_equal -1, strnatcmp('x1', 'x2')
  end

  it 'sorts letters and numbers (x2 > x1)' do
    assert_equal 1, strnatcmp('x2', 'x1')
  end

  it 'sorts numbers numerically' do
    assert_equal -1, strnatcmp('9', '10')
  end

  it 'sorts multi-word strings that are equal' do
    assert_equal 0, strnatcmp('x 1', 'x 1')
  end

  it 'sorts multi-word strings that are not equal' do
    assert_equal -1, strnatcmp('x 1', 'x 2')
  end
end
