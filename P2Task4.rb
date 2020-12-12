#В змінній year збігається рік. Визначте чи є він високосним. Рік буде високосним в двох випадках: або він ділиться на 4, але при цьому не ділиться на 100, або ділиться на 400.
def year_type (year)
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
       puts "true"
    else
       puts "false" 
 end   
end

year_type (2020) #true
year_type (2019) #false
