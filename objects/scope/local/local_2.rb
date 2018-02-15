puts


class C     # 4
  a = 5
  module M    # 3
    a = 4
    module N    # 2
      a = 3
      class D     # 1
        a = 2
        def show_a    # 5
          a = 1
          puts a
        end
        puts a
      end
      puts a
    end
    puts a
  end
  puts a
end

d = C::M::N::D.new
d.show_a


puts