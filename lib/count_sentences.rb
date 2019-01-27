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
    neo = temp_arr.join(".")
    temp_arr2 = neo.split("?")
    last_sent = temp_arr2.join(".")
    sentences_arr = last_sent.split(".")
    empty_str_count = 0 
    sentences_arr.each do |sent|
      if sent.length == 0 
        empty_str_count += 1
      end
    end
    foo =  sentences_arr.length 
    foo - empty_str_count
  end
end