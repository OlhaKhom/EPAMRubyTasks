#Змінна min має число від 0 до 59. Визначити в яку чверть години потрапляє число, відповідно вивести на екран одне з значень: «перша», «друга», «третя»б «четверта».
def time (min) 

    quarter = 60 / 4
    
     if min <= quarter
         puts "#{min} min - is in the first quarter"
     elsif min <= (quarter * 2)
        puts "#{min} min - is in the second quarter"
     elsif min <= (quarter * 3)
        puts "#{min} min - is in the third quarter"
     else
        puts "#{min} min - is in the fourth quarter"
     end
end
time(14)
time(35)
time(20)
time(55)