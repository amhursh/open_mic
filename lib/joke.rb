class Joke

  attr_accessor :joke_info,
                :id,
                :question,
                :answer

  def initialize(joke_info = {id: nil, question: nil, answer: nil})
    @joke_info = joke_info
    @id = @joke_info[:id]
    @question = @joke_info[:question]
    @answer = @joke_info[:answer]
  end

end
