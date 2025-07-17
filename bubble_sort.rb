def bubble_sort(array)
  loop do
    has_switched = false
    current_index = 0

    while current_index < array.size - 1
      if array[current_index] > array[current_index + 1]
        switch_elements(array, current_index)
        has_switched = true
      end
      current_index += 1
    end

    break unless has_switched
  end

  array
end

def switch_elements(array, current_index)
  temp = array[current_index]
  array[current_index] = array[current_index + 1]
  array[current_index + 1] = temp
end
