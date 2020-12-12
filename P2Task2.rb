#Створити змінну var і призначити їй значення 'hello'. Звертаючись до окремих символів цього рядка – вивести на екран символ 'h', символ 'e', символ 'o'.
def dev_string()

    var = 'hello'
    var.split('')
    puts var[0]
    puts var[1]
    puts var[-1]
    
end

dev_string()
