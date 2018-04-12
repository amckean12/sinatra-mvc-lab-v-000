class PigLatinizer
  attr_reader :text
  attr_accessor :words

  def initialize(text)
    @text = text.downcase
    parseInputedPhrase
    pigLatinTranslate
    createPigLatinPhrase
  end

  def parseInputedPhrase
    @words = @text.split(/\W+/)
  end

  def pigLatinTranslate
    @words.map! do |word|
      if word =~(/\A[aeiou]/i)
        word = word + 'ay'
      elsif word =~ (/\A[^aeiou]/i)
        match = /\A[^aeiou]/i.match(word)
        word = match.post_match + match.to_s + 'ay'
      end
      word
    end
  end

  def createPigLatinPhrase
    phrase = @words.join(" ")
    puts "#{phrase}"
  end
end
