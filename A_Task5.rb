#5. You need to find out a unique value in array, you are given arrays: 
#- [ 1, 1, 1, 2, 1, 1 ] => 2 
#- [ 0, 0, 0.55, 0, 0 ] => 0.55 
#- [3,1,5,3,7,4,1,5,7] => 4 

def unique_value(array)
    count = 0
    elem = 0
        array.each do |el|
            count = array.count(el)   
           if count == 1
              elem = el       
           end
    end
        puts  "Unique value in array: #{elem}"
end
    
    unique_value([ 1, 1, 1, 2, 1, 1 ])
    unique_value([ 0, 0, 0.55, 0, 0 ])
    unique_value([3,1,5,3,7,4,1,5,7])