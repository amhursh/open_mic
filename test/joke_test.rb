require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def test_joke_exists
    joke = Joke.new
    assert_instance_of Joke, joke
  end

  def test_joke_takes_jokes
    joke = Joke.new({id: 1, question: "knock, knock", answer: "who's there"})

    assert_equal ({id: 1, question: "knock, knock", answer: "who's there"}), joke.joke_info
  end

  def test_joke_has_id
    skip
    joke = Joke.new({id: 1})

    assert_equal 1, joke.id
  end

end
