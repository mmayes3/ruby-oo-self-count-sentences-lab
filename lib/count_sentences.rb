require 'pry'

class String
  def inlitialize(sentence)
    @sentence = sentence
  end
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    p array = self.split(/[.?!]/).reject {|string| string.empty?}
    array.length
  end
end

# s = "This, well, is a sentence. This is too!! And so is this, I think? Woo"
# s = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo")
# puts s.count_sentences