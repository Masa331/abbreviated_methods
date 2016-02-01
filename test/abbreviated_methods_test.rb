$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'abbreviated_methods'
require 'minitest/autorun'

class AbbreviatedMethodsTest < Minitest::Test
  class Dog
    include AbbreviatedMethods

    def name
      'Fred'
    end
  end

  def test_method_invocation_by_its_abbreviation
    dog = Dog.new

    assert_equal 'Fred', dog.nam
  end

  def test_respond_to_returns_true_for_abbreviated_methods
    dog = Dog.new

    assert dog.respond_to?('nam')
  end

  def test_method_method_returns_original_method_by_its_abbreviation
    dog = Dog.new

    assert_equal dog.method('name').call, dog.method('nam').call
  end

  def test_method_abbreviations_returns_array_possible_abbreviations
    dog = Dog.new

    methods_with_abbrevs = dog.methods_with_their_abbreviations
    assert_equal methods_with_abbrevs[:name], ['nam', 'na']
  end
end
