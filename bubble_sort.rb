def bubble_sort(numbers)
  if numbers.is_a?(Array) && numbers.any?
    swap = true
    while swap == true
      swap = false
      (numbers.length - 1).times do |i|
        if numbers[i] > numbers[i + 1]
          numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
          swap = true
        end
      end
    end
    numbers
  else
    puts 'No numbers given.'
  end
end

def bubble_sort_by(array)
  swap = true
  if array.is_a?(Array) && array.any?
    while swap == true
      swap = false
      (array.size - 1).times do |i|
        comparator = yield array[i], array[i + 1]
        if comparator && comparator != 0
          array[i], array[i + 1] = array[i + 1], array[i]
          swap = true
        end
      end
    end
    print array
  else
    puts 'No block given.'
  end
end

bubble_sort_by(%w[hey Ruby hi hello Marcos Sam]) do |l, r|
  (l.length - r.length).positive?
end
