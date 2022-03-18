require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end 
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end 
  end

  def count_sentences
    new_array = self.split(/\.|\?|\!/)
    filtered_array = new_array.select do |element|
      element.length != 0
    end
    filtered_array.length
  end
  
  puts "this is a strng with a period.".sentence?
  puts "this is a strng with a period".sentence?
  puts "this is a strng with a period?".question?
  puts "this is a strng with a period".question?
  puts "this is a strng with a period!".exclamation?
  puts "this is a strng with a period".exclamation?
  puts "this... is two?".count_sentences
end



