class Object
    def file
        def slurp(n)
            File.readlines(n)
        end

        def slurp2(n)
            slurp(n).join
        end
    end
    def method_missing(m, *args, &block)
        #puts "no #{m}"
    end    
end
