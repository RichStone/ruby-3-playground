class Banger
  def !
    :bang
  end
end

class Naysayer
  def not
    :nay
  end
end

# Some fun shorthands in case you need to golf around with ruby 3:
# class Foo; def ! = :foo end
# class Bar; def not = :bar end
# class Baz; def ! = :baz1 ; def not = :baz2 end
