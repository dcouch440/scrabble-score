class Scrabble
  def self.get_score(word)
    counter = 0
    values = [1,2,3,4,5,8,10]
    chars_array = [
      ['A','E','I','O','U','L','N','R','S','T'],
      ['D', 'G'],
      ['B', 'C', 'M', 'P'],
      ['F', 'H', 'V', 'W', 'Y'],
      ['K'],
      ['J', 'X'],
      ['Q', 'Z']
    ]
    chars_array.each_with_index do |chars, i|
      chars.each do |char|
        word.upcase.each_char do |word_char| 
          if char == word_char
            counter += values[i]
          end
        end
      end
    end
    counter
  end
end