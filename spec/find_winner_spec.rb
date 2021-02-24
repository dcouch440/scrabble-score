require('rspec')
require('find_winner')

describe(FindWinner) do
  describe("#get_max") do
    it("compares the value of two files to determine a winner") do
      expect(FindWinner.get_max('spec/test_text/test_text.txt', 'spec/test_text/text_text2.txt')).to(eq("player_2 is the winner with a score of 25"))
    end
  end
end