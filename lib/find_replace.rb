class String
  define_method(:find_and_replace) do |string_to_find, replacement|
    original_string = self
    result_array = []

    words = original_string.split()
    words.each() do |word|
      if word == string_to_find #exact match
        result_array.push(replacement)
      elsif word.include?(string_to_find) #partial match
          sub = word.gsub(string_to_find, replacement)
          result_array.push(sub)
      else #if word is not found
        result_array.push(word)
      end
    end

    result = result_array.join(' ')
    result
  end
end
