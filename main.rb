class User
  def initialize(name:, age:)
    @name = name
    @age = age
    @created_at = Time.now
  end

  def self.create(**kwd)
    new(**kwd)
  end

  def name
    @name
  end

  def age
    @age
  end

  def created_at
    @created_at
  end

  def attributes
    { name:, age:, created_at: }
  end
end

homu = User.create(name: "homu", age: 14)

pp homu.attributes[:created_at]
