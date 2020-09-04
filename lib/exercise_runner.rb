require_relative 'collection'
require_relative 'user'

class ExerciseRunner
  include Collection

  def self.collection
    Collection.array_collection
  end

  def start(user)
    user
  end
end

runner = ExerciseRunner.new
p runner.start(User.where(age: 20))
