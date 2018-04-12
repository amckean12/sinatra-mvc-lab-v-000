class PigLatinizer
  attr_reader :text
  attr_accessor :result, :pigResult

  @@vowels = ["a", "e", "i", "o", "u"]
  @@twoLetterConst = ["ch", "sh", "qu", "th", "br"]
  @@threeLetterConst = ["thr", "sch", "squ"]


  def initialize(text)
    @text = text.split(" ")
  end

  def pigLatinTranslate
    @result = []
    @text.each do |word|
      if @@vowels.include? word[0]
        @result.push word << 'ay'
      else
        if @@twoLetterConst.include? word[0] + word[1] + word[2]
          firstThreeLetters = word.slice!(0,3)
          @result.push word << firstThreeLetters << 'ay'
        elsif twoLetterConst.include? word[0] + word[1]
          firstTwoLetters = word.slice!(0,2)
          @result.push word << firstTwoLetters << 'ay'
        else
          firstLetter = word.slice!(0)
          @result.push word << firstLetter << 'ay'
        end
      end
    end
      @pigResult = @result.join(" ")
      return @pigResult
  end
end
