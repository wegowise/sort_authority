module Enumerable
  def natural_sort
    SortAuthority.ensure_strings(self)
    sort {|a, b| SortAuthority.strnatcmp(a, b) }
  end

  def natural_sort!
    SortAuthority.ensure_strings(self)
    sort! {|a, b| SortAuthority.strnatcmp(a, b) }
  end

  def natural_sort_by(&block)
    SortAuthority.ensure_strings(self.map {|val| block.call(val) })
    sort {|a, b| SortAuthority.strnatcmp(block.call(a), block.call(b)) }
  end

  def natural_sort_by!(&block)
    SortAuthority.ensure_strings(self.map {|val| block.call(val) })
    sort! {|a, b| SortAuthority.strnatcmp(block.call(a), block.call(b)) }
  end
end
