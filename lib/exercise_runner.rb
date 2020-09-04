require 'pry'
require_relative 'user'
require_relative 'collection'

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
p runner.start(User.new(age: 20))
