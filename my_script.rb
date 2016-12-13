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

def square(x)
  x*x
end

puts square(5)

def linearsearch()
  list = Array[4, 5, 2, 1, 3]
  key = 2
  for i in 0..list.length
    if list[i] == key
      puts "target found at array index #{i}"
    end
  end
end
def bubblesort()

  list = Array[4, 5, 2, 1, 3]

  temp = 0
  for i in 0..list.length
    #puts "#{list[i]}"
    for j in 0..list.length
     if list[j] > list[i]
       temp = list[j]
       list[j] = list[i]
       list[i] = temp
     end
    end
  end
  puts "#{list}"
end

linearsearch
#bubblesort
# bubblesort(numbers)
