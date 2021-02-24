require_relative('condense_document')
require_relative('scrabble')

class ParseDocument
  def initialize(document)
    @document = CondenseDocument.txt_no_space(document)
  end
  def document
    @document
  end
  def scrabble_score
    Scrabble.get_score(@document)
  end
end
