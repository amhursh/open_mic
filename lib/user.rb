require './lib/joke'

class User

  attr_reader :name,
              :jokes

  def initialize(name, jokes = [])
    @name = name
    @jokes = jokes
  end

  def learn(joke)
    jokes << joke
  end

  def tell(user, joke)
    user.jokes << joke
  end

  def perform_routine_for(user)
    @jokes.each do |joke|
      user.jokes << joke
    end
  end

  # def parse_routine(csv_file)
  #   CSV.foreach(csv_file) do |joke|
  #     joke.split(",")
  #   end
  # end

end
