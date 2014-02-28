def select_elements_starting_with_a array
  array.select { |item| item[0] == 'a' }
end

def select_elements_starting_with_vowel array
  array.select { |item| item =~ /^[aeiou]/ }
end

def remove_nils_from_array array
  array.compact
end