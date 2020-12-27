#1.Є масив з довільними числами. 
#Зробіть так, щоб елемент повторився в масиві таку кількість разів яка відповідає його числу. 
#Приклад: [1, 3, 2, 4] перетворюється в [1, 3, 3, 3, 2, 2, 4, 4, 4, 4]. 

def random_massive(massive)
    new_arr = []
    massive.each do |el|
        el.times do
            new_arr << el
        end
    end
puts "New array: #{new_arr}"
end

random_massive([1, 3, 2, 4])