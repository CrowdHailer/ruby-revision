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
  array.reject(&:!)
end

def reverse_every_element_in_array array
  array.map(&:reverse)
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

def array_sort_by_last_letter_of_word array
  array.sort_by { |word| word[-1] }
end

def get_first_half_of_string string
  last = (string.length+1)/2
  string[0...last]
end

def make_numbers_negative n
  n > 0 ? -n : n
end

def separate_array_into_even_and_odd_numbers array
  array.partition(&:even?)
end


class String
  def palindrome?
    self == reverse
  end
end

def number_of_elements_that_are_palindromes array
  array.select(&:palindrome?).length
end

def shortest_word_in_array array
  array.sort_by(&:length).first
end