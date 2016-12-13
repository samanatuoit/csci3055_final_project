# The Greeter Class
class MyHello
  def initialize(name)
    @name = name.capitalize
  end

  def Sayhi
    puts "Hello #{@name}!"
  end
end

# Create a new object
g = MyHello.new("world")

# Output "Hello World"
g.Sayhi

# Square a number
def square(x)
  x*x
end



# linear search

def linearsearch(list, target)
  for i in 0..list.length
    if list[i] == target
      puts "Linear search: target found at array index #{i}"
    end
  end
end

def bubblesort(list)
  for i in 0..list.length-1
    for j in 0..list.length-1
     if list[j] > list[i]
       temp = list[j]
       list[j] = list[i]
       list[i] = temp
     end
    end
  end
  return list
end

def insertionsort(list)
  for j in 1..list.length-1
    key = list[j]
    i = j - 1
    while i > -1 && list[i] > key
      list[i + 1] = list[i]
      i -= 1
    end
    list[i + 1] = key
  end
  return list
end

def quicksort(list, p, r)
  if p < r
    q = partition(list, p, r)
    quicksort(list, p, q - 1)
    quicksort(list, q + 1, r)
  end
end

def partition(list, p, r)
  x = list[r]
  i = p - 1
  for j in p..r-1
    if list[j] <= x
      i += 1
      temp = list[i]
      list[i] = list[j]
      list[j] = temp
    end

  end
  temp = list[i + 1]
  list[i + 1] = list[r]
  list[r] = temp
  return i + 1
end



def binarysearch(list, target)
  max = list.length-1
  min = 0
  while max >= min

    guess = (max + min) / 2
    if list[guess] == target
      return guess

    elsif list[guess] < target
      min = guess + 1
    else
        max = (guess - 1)
    end
  end

  return "Not found"
end

def myfactorial(n)
  if n == 1
    return 1
  elsif n == 0
    return 0
  else
    return n * myfactorial(n-1)
  end
end

# An unsorted array
list = [4, 5, 2, 1, 3]

# Square the number 5
puts "5 squared = #{square(5)}"

# Linear search with target of 2
linearsearch(list, 2)

# Bubblesort
puts "list before bubblesort: #{list}"
sortedlist = bubblesort(list)
puts "Bubblesort sorted list: #{sortedlist}"

# Insertion sort
list2 = [45, 10, 19, 87]
puts "list before insertion sort: #{list2}"
sortedlist2 = insertionsort(list2)
puts "Insertion sort sorted list: #{sortedlist2}"

# Quicksort
list3 = [14, 10, 11, 12, 13]
puts "list before quicksort = #{list3}"
quicksort(list3, 0, list3.length-1)
puts "Quicksort sorted list: #{list3}"

# Binary search with target of 4
puts "Binary search: target value of 4 is at index #{binarysearch(sortedlist, 4)}"
# factorial
puts "factorial 5 = #{myfactorial(5)}"

