#3.	Є масив a = [342, 55, 33, 123, 66, 63, 9]; - потрібно вивести на екран тільки ті числа в яких є '3'
def find_number(a)
    a.each do |n|
       numArr = n.to_s.split('')
       if numArr.include?('3')
          puts "Число в якому є '3': #{numArr.join('')}"
    end
  end
end

find_number([342, 55, 33, 123, 66, 63, 9])