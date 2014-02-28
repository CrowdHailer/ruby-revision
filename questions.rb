def select_elements_starting_with_a array
  array.select { |item| item[0] == 'a' }
end