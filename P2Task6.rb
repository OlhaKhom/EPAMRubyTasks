#Є рядок з 6-ти чисел (наприклад: 385934). Перевірте, чи сума перших трьох чисел дорівнює сумі других трьох чисел. Якщо це так – виведіть 'так' інакше – 'ні'.
def num_sum(number)

    if number.to_s.split('').map(&:to_i).length != 6
        puts "Wrong number. Enter number with 6 digits"
    else
        firstDigit = (number.to_i / 1000)
        lastDigit = (number.to_i % 1000)
        
       sum1 = firstDigit.to_s.split('').map(&:to_i).inject(0){|sum, x| sum + x} 
       sum2 = lastDigit.to_s.split('').map(&:to_i).inject(0){|sum, y| sum + y} 
     end 
       puts sum1 == sum2
end

num_sum(385934)
num_sum(123322)
num_sum(123321)