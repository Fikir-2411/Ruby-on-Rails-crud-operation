books = {
    
    Wheel_of_time: 4,
    Mistborn: 5,
    Alchemist: 7,
}

puts "What would you like?(a)(u)(d)(l)"

    choice = gets.chomp
    
    case choice
    
    when "a"
        
        puts "Enter a book's name"
        
        title = gets.chomp
    if books[title.to_sym] .nil?
        
        puts "Rate the book"
        
        rating = gets.chomp
        
        books[title.to_sym] = rating.to_i
        
        puts "#{title} is added with #{rating} ratings"
    else puts "You allready have it"
    end
    puts books
    end
