module Collection
  def self.array_collection
    [
      User.new({ id: 1, name: "foo", age: 20 }),
      User.new({ id: 2, name: "bar", age: 21 }),
      User.new({ id: 3, name: "baz", age: 20 })
    ]
  end
end
