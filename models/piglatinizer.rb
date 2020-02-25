class PigLatinizer

  attr_accessor :words, :latinize
  attr_reader :vowels

  def initialize()
    @vowels = ["a", "e", "i", "o", "u"]
    @words = words
  end

  def piglatinize(word)
    word.gsub(/\w+/) { |word| translate(word)  }
  end

  def translate(word)
    return word + "way" if @vowels.include?(word[0].downcase)
    handle_capitals(word)
  end

  def capital?(word)
    word[0] != word[0].downcase
  end

  def latinize_word(word)
    word[1..-1] + word[0] + "ay"
  end

  def handle_capitals(word)
    return latinize_word(word).capitalize if capital?(word)
    latinize_word(word)
  end
end
