require('rspec')
require('parse_document')

describe(ParseDocument) do
  describe('#document') do
    it("stores condensed text in a string") do
      expect(ParseDocument.new('spec/test_text/test_text.txt').document).to(eq("ThisWorks"))
    end
  end
  describe('#scrabble_score') do
    it("gets the value of the document using the scrabble object") do
      expect(ParseDocument.new('spec/test_text/test_text.txt').scrabble_score).to(eq(19))
    end
  end
end