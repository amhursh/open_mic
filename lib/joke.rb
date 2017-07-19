class Joke

  attr_accessor :joke_info

  def initialize(joke_info)
    {id: nil, question: nil, answer: nil} = joke_info
    @joke_info = joke_info
  end

end
