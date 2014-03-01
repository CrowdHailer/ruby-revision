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

def longest_word_in_array array
  array.sort_by(&:length).last
end

def total_of_array array
  array.reduce(&:+)
end

def double_array array
  array * 2
end

def turn_symbol_into_string symbol
  symbol.to_s
end

def average_of_array array
  float = total_of_array(array)/array.length.to_f
  float.round(0)
end

def get_elements_until_greater_than_five array
  output = []
  array.each do |item|
    break if item > 5
    output << item
  end
  output
end

def convert_array_to_a_hash array
  hash = {}
  array.each_slice(2) do |variable|
    hash[variable[0]] = variable[1]
  end
  hash
end

def get_all_letters_in_array_of_words array
  array.map(&:chars).map(&:to_a).flatten.uniq.sort
end

def swap_keys_and_values_in_a_hash hash
  output = {}
  hash.each do |k, v|
    output[v] = k
  end
  output
end

def add_together_keys_and_values hash
  hash.inject(0) do |total, pair|
    total += pair.reduce(&:+)
  end
end

def remove_capital_letters_from_string string
  string.gsub(/[A-Z]/, '')
end

def round_up_number number
  number.ceil
end

def round_down_number number
  number.floor
end

def format_date_nicely date
  date.strftime("%d/%m/%Y")
end

def get_domain_name_from_email_address string
  string.match(/@(.+)\./)[1]
end

def titleize_a_string string
  conjunctions = ['a','and','the']
  words = string.split.map do |word|
    (conjunctions.include? word) ? word : word.capitalize
  end
  words[0].capitalize!
  words.join(" ")
end

def check_a_string_for_special_characters string
  (/^[\w\d]+$/ !~ string)
end

def get_upper_limit_of range
  range.max
end

def is_a_3_dot_range? range
  range.inspect.match(/\d\.{3}\d/)
end

def square_root_of number
  number ** 0.5
end

def word_count_a_file file_string
  string = IO.read(file_string)
  words = string.split
  words.count
end

def call_method_from_string method
  send(method)
end

def is_a_2014_bank_holiday? date
  bank_hols = [ {d:1, m:1},
                {d:18, m:4},
                {d:21, m:4},
                {d:5, m:5},
                {d:26, m:5},
                {d:25, m:8},
                {d:25, m:12},
                {d:26, m:12}
              ]
  bank_hols.map! { |date| Time.new(2014, date[:m], date[:d]) }
  bank_hols.include? date
end

def your_birthday_is_on_a_friday_in_the_year birthday
  y, m, d = birthday.year, birthday.month, birthday.day
  return y if birthday.friday?
  your_birthday_is_on_a_friday_in_the_year Time.new(y+1, m, d)
end