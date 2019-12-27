def bubble_sort(array)
    sorted = false
    while !sorted
    sorted = true 
        (array.length - 1).times do |i|
          if array[i + 1] < array[i]
             dummy = array[i]
             array[i] = array[i+1]
             array[i+1]=dummy
             sorted = false
          end
        end  
    end  
    array
end

def bubble_sort_by(array)
    sorted = false
    while !sorted
    sorted = true 
    (array.length - 1).times do |i|
        if yield(array[i], array[i + 1]) > 0
           array[i], array[i + 1] = array[i+ 1], array[i]
           sorted = false
        end
    end
    end
    return array  
end

print bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
  end
