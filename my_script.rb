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

puts "5 squared = #{square(5)}"

# An unsorted array
list = Array[4, 5, 2, 1, 3]

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
  #puts "Bubblesort sorted list: #{list}"
end

def binarysearch(list, target)
  max = list.length-1
  #puts "max = #{max}"
  min = 0
  #puts "min = #{min}"
  while max >= min

    guess = (max + min) / 2
    #puts "guess = #{guess}"
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
linearsearch(list, 2)
sortedlist = bubblesort(list)
puts "Bubblesort sorted list: #{sortedlist}"
puts "Binary search: target value of 4 is at index #{binarysearch(sortedlist, 4)}"
