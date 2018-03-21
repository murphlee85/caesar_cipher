class Caesar

  def initialize
    @alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  end

  def eng_to_cipher (plaintext, shift)
    plaintext.chars.map do |letter|
      translate_letter(letter, shift)
  end.join

  def translate_letter(letter, shift)
    return " " if letter == " "
    rotated = @alphabet.rotate(shift * -1)
    index = @alphabet.index(letter)
    rotated[index]
  end
end
