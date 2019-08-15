=begin
cons(a, b) constructs a pair, and car(pair) and cdr(pair) returns the first and last element of that pair. For example, car(cons(3, 4)) returns 3, and cdr(cons(3, 4)) returns 4.

Given this implementation of cons:

def cons(a, b):
    def pair(f):
        return f(a, b)
    return pair
Implement car and cdr.
=end

class Problem5
  class << self
    def car(pair)
      pair.call lambda { |a, b| [a,b].min }
    end

    def cdr(pair)
      pair.call lambda { |a, b| [a,b].max }
    end

    def cons(a, b)
      lambda { |f| f.call(a, b) }
    end
  end
end
