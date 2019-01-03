class Product
    attr_reader :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end

    def to_s
        "name: #{name}, price: #{price}"
    end
end

class DVD < Product
    attr_reader :running_time
    def initialize(name, price, running_time)
        super(name, price)
        @running_time = running_time
    end

    def to_s
        "#{super}, running_time: #{running_time}"
    end
end

dvd = DVD.new('STAR WARS', 100000, 250)
puts dvd.name
puts dvd.price
puts dvd.running_time
puts dvd.to_s