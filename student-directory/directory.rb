def print_header
  center_length = 48
  puts "The students of Villains Academy".center(center_length)
  puts "-------------".center(center_length)
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    puts "Please enter the chort of #{name}"
    month = gets.chomp
    students << {:name => name.capitalize, :cohort => month.capitalize}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print(students)
  center_length = 48
  students.each do |student| 
    puts "Name: #{student[:name]} (#{student[:cohort]} cohort)".center(center_length)
  end
end

def print_footer(names)
  center_length = 48
  case names.count
    when 0
      puts "We have #{names.count} students".center(center_length)
    when 1
      puts "Overall, we have #{names.count} great student".center(center_length)
    else
      puts "Overall, we have #{names.count} great students".center(center_length)
  end 
end
def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
      when "1"
        students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit
      else
        puts "I don't know what you mean, try again"
    end
  end
end
interactive_menu
  