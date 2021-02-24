class CondenseDocument
  def self.txt_no_space (text)
    File.read(text).gsub(/\s/, '')
  end
end
