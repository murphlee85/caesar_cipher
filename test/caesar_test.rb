require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'
require 'pry'

class CaesarTest < Minitest::Test
  def test_caesar_exists
    caesar = Caesar.new
# binding.pry
    assert_instance_of Caesar, caesar
  end

  def test_it_can_translate_a_letter
    caesar = Caesar.new

    assert_equal "x", caesar.translate_letter("a", 3)
  end

  def test_it_can_translate_a_different_letter
    caesar = Caesar.new

    assert_equal "a", caesar.translate_letter("d", 3)

  def test_it_can_translate
    caesar = Caesar.new

    plaintext = "the quick brown fox jumps over the lazy dog"
    result = caesar.eng_to_cipher(plaintext, 3)
    expected = "qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald"

    assert_equal expected, result
