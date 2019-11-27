dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string,array)
    downcased = string.downcase.gsub(/[,!?]/, "").gsub(/'s/, "").split(" ")
    count = Hash.new(0)

    downcased.find_all{|j|
    array.each{|i| 
    count[i] += 1 if j.include?(i)   
    }}
    count
end

puts substrings("Howdy partner, sit down! How's it going?",dictionary)