# substrings.rb

puts "please enter your string"
user_input = gets.chomp
#"The balloons floated away along with all my hopes and dreams."
puts "please enter your dictionary (separated by spaces"
user_dictionary = gets.chomp
#%w(the he ball loon loons balloon balloons float oat ate floated a way away long on wit with my ho hop hope hopes am dream dreams)

def substrings (input, dictionary)
  words = input.split(' ')
  dictionary = dictionary.split(' ')
  output = dictionary.reduce(Hash.new(0)) do |result, item|
    words.each do |word|
      if word.downcase.include?(item)
        result[item] += word.downcase.scan(item).count
      end
    end 
  result
  end
  p output
end

substrings(user_input,user_dictionary)
