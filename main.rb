

class Object
    def file
        def slurp(n)
            File.readlines(n)
        end

        def slurp2(n)
            slurp(n).join
        end
    end

    def obj(h)
        ObjectHash.new(h)
    end

    def die(s)
        puts "died: #{s}"
    end
end

class ObjectHash
    def initialize(h)
        @h = h
    end
    def method_missing(m, *args, &block)
        @h[m] if @h[m] or die "no hash key exists: #{m}"
    end
end
