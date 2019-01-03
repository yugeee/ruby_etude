class User
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def rename_to_bob
        name = 'Bob'
    end

    def rename_to_carol
        self.name = 'Carol'
    end

    def rename_to_dave
        @name = 'Dave'
    end
end

user = User.new('Alice')

puts user.name

user.rename_to_bob
puts user.name

user.rename_to_carol
puts user.name

user.rename_to_dave
puts user.name