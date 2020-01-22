puts "Hello World!"

# The program has a hash, already defined, named as Courses 
# consisting of Course name and Course ECTS and it allows 
# users to create a course, update a course's ECTS,
# delete a course by its name and/or list all the Courses

courses = {
    
    DBA: 6,
    Web: 7,
    Networking: 7,
}

puts "(a - add a course)(u - update a course)(d - delete a course)(l) - list all courses"

    choice = gets.chomp
    
    case choice
    
    when "a"
        
        puts "Enter a course's name"
        
        title = gets.chomp
    if courses[title.to_sym] .nil?
        
        puts "Enter the ECTS:"
        
        ects = gets.chomp
        
        courses[title.to_sym] = ects.to_i
        
        puts "#{title} is added with #{ects} ECTS"
    else puts "The course exist!"
    end
    
    when "u"
        puts "Which Course you want to Update?"
        
        title = gets.chomp
        
        if courses[title.to_sym] .nil?
            puts "Sorry the couse was not found!"
        else puts "What's the new ECTS?"
            ects = gets.chomp
            courses[title.to_sym] = ects.to_i
    end
    
    when "d"
        puts "Which Course do you wish to delete?"
         title = gets.chomp.to_sym
         
         if courses[title.to_sym] .nil?
             puts "The Course Doesn't Exist"
        else 
            courses.delete(title)
        end
    
    when "l"
        courses.each do |course, ects|
            puts "#{course}:#{ects}"
            
        end
        
    else 
        puts "Error!"
    end
    
    
puts courses
