class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    a = a.map { |a| a.to_i + 2}
    a = a.uniq.keep_if { |a| a % 2 ==0}
    a = a.reject {|a| a >= 10}
    a.reduce(:+)
  end
end
