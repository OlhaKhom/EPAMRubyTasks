
#2.	Є рядок наступного вигляду: 4 літери, потім пробіл, потім ще 4 літери. Наприклад, такий рядок 'ФЫВА олдж'. 
#Треба перетворити на наступний рядок 'АВЫФ ждло'. !!!! UTF-8
def string_convert(str)
    myarr = str.split(' ')
    newString = myarr.map{|w| w.reverse}.join(' ')
    puts newString
end

string_convert('ФЫВА олдж')