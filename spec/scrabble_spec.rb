require('rspec')
require('scrabble')

describe(Scrabble) do
  describe("#scrabble") do
    it("returns a scrabble score for the letter 'a' valued at 1") do
      a = Scrabble.new('a')
      expect(a.scrabble()).to(eq(1))
    end
    it("returns a scrabble score for the letters 'aeioulnrst' valued at 10") do
      letters = Scrabble.new('aeioulnrst')
      expect(letters.scrabble()).to(eq(10))
    end 
    it("returns a scrabble score of 2 for the letters 'dg'") do
      letters = Scrabble.new('dg')
      expect(letters.scrabble()).to(eq(4))
    end
    it("returns a scrabble score of 3 for the letters 'bcmp'") do
      letters = Scrabble.new('bcmp')
      expect(letters.scrabble()).to(eq(12))
    end
    it("returns a scrabble score of 4 for the letters 'fhvwy'") do
      letters = Scrabble.new('fhvwy')
      expect(letters.scrabble()).to(eq(20))
    end
    it("returns a scrabble score of 5 for the letters 'k'") do
      letters = Scrabble.new('k')
      expect(letters.scrabble()).to(eq(5))
    end
    it("returns a scrabble score of 8 for the letters 'jx'") do
      letters = Scrabble.new('jx')
      expect(letters.scrabble()).to(eq(16))
    end
    it("returns a scrabble score of 10 for the letters 'qz'") do
      letters = Scrabble.new('qz')
      expect(letters.scrabble()).to(eq(20))
    end
    # it("returns a scrabble score of 2 for the letters 'dg', and a score of 1 for letters 'aeioulnrst'") do
    #   word = Scrabble.new('dog')
    #   expect(word.scrabble()).to(eq(5))
    # end
    # it("returns a scrabble score of 3 for the letters B, C, M, P") do
    #   word = Scrabble.new('bootcamp')
    #   expect(word.scrabble()).to(eq(13))
    # end
  end
end
