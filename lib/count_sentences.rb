require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end
  
  def count_sentences
    count = 0
    self.split.length.times do |i|
      if self.split[i].sentence? || self.split[i].question? || self.split[i].exclamation?
        count += 1
      end
    end
    count
  end


end
