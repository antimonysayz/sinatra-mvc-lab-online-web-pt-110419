class PigLatinizer

  attr_accessor :words, :latinize
  attr_reader :vowels

  def initialize()
    @vowels = ["a", "e", "i", "o", "u"]
    @words = words
  end

  def piglatinize(word)
  pigarray = word.split

  new = pigarray.collect do |a_word|
    first_vowel_i = a_word.split('').find_index do |char|
      ['a','e','i','o','u'].include?(char.downcase)
    end

    if first_vowel_i == 0
      a_word << "way"
    else
      a_word[first_vowel_i...a_word.length] <<"#{a_word[0...first_vowel_i]}ay"
    end
  end

  new.join(" ")
end

end
