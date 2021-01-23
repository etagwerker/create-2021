# test.rb
class User
  def initialize(name:, age:)
    @name, @age = name, age
  end

  attr_reader :name, :age
end

User.new(name: "John", age: 38)