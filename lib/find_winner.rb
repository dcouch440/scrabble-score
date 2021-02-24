require_relative('parse_document')

class FindWinner
  def self.get_max(*files)
    players = {}
    files.each_with_index do |file, i|
      i += 1
      players["player_#{i}"] = ParseDocument.new(file).scrabble_score
    end
    name, score = players.max_by { |player, score| score }
    "#{name} is the winner with a score of #{score}"
  end
end

puts FindWinner.get_max('documents/player_1.txt', 'documents/player_2.txt')