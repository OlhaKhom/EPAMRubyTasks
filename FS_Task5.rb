
#5.	My friend wants a new band name for her band. She likes bands that use the formula: 'The' + a noun with first letter capitalized. 
#However, when a noun STARTS and ENDS with the same letter, she likes to repeat the noun twice and connect them together 
#with the first and last letter, combined into one word like so (WITHOUT a 'The' in front):
#dolphin -> The Dolphin
#alaska -> Alaskalaska
#europe -> Europeurope

def band_name(name)

    puts name[0] == name[-1] ? (name + name[1..-1]).capitalize : "The #{name.capitalize}"
    
 end
 
 band_name('dolphin')
 band_name('alaska')
 band_name('europe')
 