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
    temp_arr2 = neo.split("?")
    last_sent = neo.join(".")
    sentences_arr = last_sent.split(".")
    empty_str_count = 0 
    sentences_arr.each do |sent|
      if sent.length == 0 
        count += 1
      end
    end
    return sentences_arr.size - count
  end
end