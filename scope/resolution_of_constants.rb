puts


module M
  class C
    class D
      module N
        X = 1
      end
    end
  end
end

puts M::C::D::N::X


puts