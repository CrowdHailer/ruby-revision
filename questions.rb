def select_elements_starting_with_a array
  array.select { |item| item[0] == 'a' }
end

def select_elements_starting_with_vowel array
  array.select { |item| item =~ /^[aeiou]/ }
end

def remove_nils_from_array array
  array.compact
end

def remove_nils_and_false_from_array array
  array.reject { |e| !e }
end

def reverse_every_element_in_array array
  array.map { |item| item.reverse }
end

def every_possible_pairing_of_students array
  array.combination(2).to_a
end

def all_elements_except_first_3 array
  array[3..-1]
end

def add_element_to_beginning_of_array array, element
  array.unshift(element)
end