def bubble_sort(array)
  swap = true
  while swap == true
    swap = false
    (array.size - 1).times do |i|
      comparator = yield array[i], array[i + 1]
      if comparator
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end
  end
  print array
end

bubble_sort(%w[hey hi Ruby hello Marcos]) do |l, r|
  (l.length - r.length).positive?
end
