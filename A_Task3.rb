#3. Є масив: books
#Отримати масив відсортований за ціною книжок  
#Отримати відфільтрований массив книжок у яких є тег ‘ruby’ 

def sort_books(books)

sorted_by_price = books.sort_by{|hsh| hsh[:price]}

filtered_by_tag = []

key_to_extract = [:tags]
    books.map do |b|
    b.select{|k,_| key_to_extract.include?("ruby")} 
    filtered_by_tag = books
       end 
       
puts sorted_by_price 
puts "---------------"
puts filtered_by_tag
end

sort_books([
    {
        name: 'Learning ruby, mysql and JavaScript',
        author: 'Robin Snow',
        price: 30,
        tags: ['ruby', 'javascript', 'mysql']
    },
    {
        name: 'Ruby for the Web: Visual QuickStart Guide',
        author: 'Larry Snow',
        price: 25,
        tags: ['ruby']
    },
    {
        name: 'Ruby and MySqL for Dynamic Web Sites',
        author: 'Larry Snow',
        price: 14.39,
        tags: ['ruby', 'mysql']
    },
    {
        name: 'Modern Ruby: New Features and Good Practices',
        author: 'Josh Snow',
        price: 24,
        tags: ['ruby']
    },
    {
        name: 'JavaScript and JQuery: Interactive Front-End Web Development',
        author: 'Jon Snow',
        price: 20,
        tags: ['javascript', 'jquery']
    },
    {
        name: 'Miss Peregrine Home for Peculiar Children',
        author: 'Ransom Snow',
        price: 8.18
    }
])