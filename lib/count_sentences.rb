require 'pry'

class String

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
    temp_arr = self.split("!")
    neo = self.join(".")
    temp_arr2 = self.split()
  end
end