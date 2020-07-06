def bubble_sort_by(a)
  swap = true
  while swap == true
    swap = false
    (a.size - 1).times do |i|
      comparator = yield a[i] , a[i+1]
      if comparator
        a[i] , a[i+1] = a[i+1], a[i]
        swap = true
      end
    end
  end
  print a
end

bubble_sort_by(['Samuel','hi','Marcos', 'Ruby']) do |l,r|
  (l.length - r.length).positive?
end