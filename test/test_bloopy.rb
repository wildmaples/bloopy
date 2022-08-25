# frozen_string_literal: true

require "test_helper"

class TestBloopy < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Bloopy::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_hi
    assert_equal "hi", Bloopy.hi
  end
end
