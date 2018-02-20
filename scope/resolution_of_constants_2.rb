puts


module M
  class C
    class D
      module N
        X = 1
      end
    end
    puts D::N::X
  end
end


puts