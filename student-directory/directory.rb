@students = []

def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "4. Load the list from students.csv"
    puts "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process(selection)
    case selection
      when "1"
        input_students
      when "2"
        show_students
      when "3"
        save_students_info
      when "4"
        load_students_info
      when "9"
        exit
      else
        puts "I don't know what you mean, try again"
    end
end

def print_header
  center_length = 48
  puts "The students of Villains Academy".center(center_length)
  puts "-------------".center(center_length)
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp
  while !name.empty? do
    @students << {:name => name.capitalize, :cohort => :november}
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
  @students
end

def print_students_list
  center_length = 48
  @students.each do |student| 
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(center_length)
  end
end

def print_footer
  center_length = 48
  case @students.count
    when 0
      puts "We have #{@students.count} students".center(center_length)
    when 1
      puts "Overall, we have #{@students.count} great student".center(center_length)
    else
      puts "Overall, we have #{@students.count} great students".center(center_length)
  end 
end

def show_students
    print_header
    print_students_list
    print_footer
end

def save_students_info
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students_info(filename = "students.csv")
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    @students << {:name => name, :cohort => cohort.to_sym}
  end
  file.close
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students_info(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

try_load_students
interactive_menu
  