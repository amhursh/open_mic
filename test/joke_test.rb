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
    joke = Joke.new({id: 1})

    assert_equal 1, joke.id
  end

  def test_joke_has_question
    joke = Joke.new({id: 1, question: "knock, knock", answer: "who's there"})

    assert_equal "knock, knock", joke.question
  end

  def test_joke_has_answer
    joke = Joke.new({id: 1, question: "knock, knock", answer: "who's there"})

    assert_equal "who's there", joke.answer
  end

  def tets_user_can_learn_routine
    skip
  end

end
