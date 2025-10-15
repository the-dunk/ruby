def substrings(search_text, substring_dict)
  result_hash = Hash.new
  for substring in substring_dict
    count = search_text.downcase.scan(substring).size

    if count > 0
      result_hash[substring] = count
    end
    
  end
  result_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)




