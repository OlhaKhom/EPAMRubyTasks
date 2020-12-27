#4.You are going to be given an array of integers. 
#Your job is to take that array and find an index N where the sum of the integers to the left of N is equal 
#to the sum of the integers to the right of N. 
#If there is no index that would make this happen, return -1. 

def find_index(arr)
    r = arr.sum
    l = 0
    arr.each_with_index { |v, i|    
      r -= v
      if l == r
        puts i
      end
      l += v
    }
    puts -1
end

find_index([20,10,-80,10,10,15,35])
find_index([10,-80,10,10,15,35])
