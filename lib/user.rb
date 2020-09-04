class User
  attr_accessor :id, :name, :age

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
  end

  def self.where(hash)
    result = []
    @error = "No result"

    collection.each do |obj|
      attr = obj.instance_variables.map {|s| s[1..-1]}
      result << obj if obj.id == hash.values.first && find_by_key(hash, attr[0])
      result << obj if obj.name == hash.values.first && find_by_key(hash, attr[1])
      result << obj if obj.age == hash.values.first && find_by_key(hash, attr[2])
    end
    result.empty? ? @error : result
  end

  def self.find_by_key(hash, attr)
    if !attr.include?(hash.keys.first.to_s)
      @error = "Error: #{hash.keys.first.to_s} is not valid."
      return false
    end
    return true
  end

  def self.collection
    @collection = ExerciseRunner.collection
  end
end
