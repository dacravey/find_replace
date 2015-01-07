class String
  define_method(:find_and_replace) do |string_to_find, replacement|
    original_string = self
    result_array = []

    words = original_string.split()
    words.each() do |word|
      if word.downcase() == string_to_find.downcase() #exact match
        result_array.push(replacement)
      elsif word.downcase().include?(string_to_find.downcase()) #partial match
          sub = word.downcase().gsub(string_to_find.downcase(), replacement)
          result_array.push(sub)
      else #if word is not found
        result_array.push(word)
      end
    end

    result = result_array.join(' ')
    result
  end
end
