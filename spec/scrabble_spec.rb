require('rspec')
require('scrabble')

describe(Scrabble) do
  describe("#scrabble") do
    it("returns a scrabble score for the letter 'a' valued at 1") do
      expect(Scrabble.get_score('a')).to(eq(1))
    end
    it("returns a scrabble score for the letters 'aeioulnrst' valued at 10") do
      expect(Scrabble.get_score('aeioulnrst')).to(eq(10))
    end 
    it("returns a scrabble score of 2 for the letters 'dg'") do
      expect(Scrabble.get_score('dg')).to(eq(4))
    end
    it("returns a scrabble score of 3 for the letters 'bcmp'") do
      expect(Scrabble.get_score('bcmp')).to(eq(12))
    end
    it("returns a scrabble score of 4 for the letters 'fhvwy'") do
      expect(Scrabble.get_score('fhvwy')).to(eq(20))
    end
    it("returns a scrabble score of 5 for the letters 'k'") do
      letters = Scrabble.get_score('k')
      expect(Scrabble.get_score('k')).to(eq(5))
    end
    it("returns a scrabble score of 8 for the letters 'jx'") do
      expect(Scrabble.get_score('jx')).to(eq(16))
    end
    it("returns a scrabble score of 10 for the letters 'qz'") do
      expect(Scrabble.get_score('qz')).to(eq(20))
    end
    it("returns a scrabble score of 2 for the letters 'dg', and a score of 1 for letters 'aeioulnrst'") do
      expect(Scrabble.get_score('dog')).to(eq(5))
    end
    it("returns a scrabble score of 3 for the letters B, C, M, P") do
      word = Scrabble.get_score('bootcamp')
      expect(Scrabble.get_score('bootcamp')).to(eq(16))
    end
    it("returns a scrabble score from each value") do
      expect(Scrabble.get_score('adbfkjq')).to(eq(33))
    end
    it("returns a scrabble score regardless of case") do
      expect(Scrabble.get_score('AdBfKjQ')).to(eq(33))
    end
  end
end
