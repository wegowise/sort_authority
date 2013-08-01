module Enumerable
  def natural_sort
    sort {|a, b| SortAuthority.strnatcmp(a, b) }
  end

  def natural_sort!
    sort! {|a, b| SortAuthority.strnatcmp(a, b) }
  end

  def natural_sort_by(&block)
    sort {|a, b| SortAuthority.strnatcmp(block.call(a), block.call(b)) }
  end

  def natural_sort_by!(&block)
    sort! {|a, b| SortAuthority.strnatcmp(block.call(a), block.call(b)) }
  end
end
