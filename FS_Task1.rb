#1.Перетворити рядок 'var_test_text' в 'varTestText'.
def convert_string(str)
    myarr = str.split('_')
    newString = myarr.map{|w| w.capitalize}.join('')
    puts newString.slice(0).downcase + newString[1..(newString.length)]
  end
  
  convert_string('var_test_text')