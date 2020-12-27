#6.	We have chars mapping: A => T, C => G. You need to create a converter for strings with the results: 
#"ATTGC" -> returns "TAACG", "GTAT" -> returns "CATA"

def replace_letters(str)

    puts  str.tr("ACTG", "TGAC")  
 
 end
 
 replace_letters("ATTGC")
 replace_letters("GTAT")