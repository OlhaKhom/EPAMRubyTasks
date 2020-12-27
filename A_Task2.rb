#2.Є масив: temperatures = [33, 15, 17, 20, 23, 23, 28, 40, 21, 19, 31, 18, 30, 31, 28, 23, 19, 28, 27, 30, 39, 17, 17, 20, 19, 23, 28, 30, 34, 28]
#Знайти три найменших значення, три найбільших і три середніх. 

def temperatures(array)
    min_a = []
    max_a = []
    3.times do
        min = array.min
        min_a << min
        array = array.reject{|k| k==min}
    end
    3.times do
        max = array.max
        max_a << max
        array = array.reject{|k| k==max}
    end
    puts "Три найменших значення: #{min_a}"
    puts "Три найбільших значення: #{max_a}"  
end

temperatures([33, 15, 17, 20, 23, 23, 28, 40, 21, 19, 31, 18, 30, 31, 28, 23, 19, 28, 27, 30, 39, 17, 17, 20, 19, 23, 28, 30, 34, 28])
