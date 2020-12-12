#Compare two strings by comparing the sum of their values (ASCII character code).
def compare_string(s1,s2)
    s1 = "" if s1.nil? || s1.match(/\A[[:alpha:]]*\z/).nil?
    s2 = "" if s2.nil? || s2.match(/\A[[:alpha:]]*\z/).nil?
    
   puts s1.upcase.sum == s2.upcase.sum
 end

 compare_string("AD", "BC")
 compare_string("AD", "DD")