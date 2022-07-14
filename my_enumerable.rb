module MyEnumerable
  def all?
    check = []
    @list.each { |n| check.push(n) if yield n }
    check.length == @list.length
  end

  def any?
    if_any = false
    @list.each { |n| if_any = true if yield n }
    if_any
  end

  def filter
    filtered = []
    @list.each { |n| filtered.push(n) if yield n }
    filtered
  end
end
