
def input_students
  center_length = 48
  students = []
  puts "Please enter the names of the students".center(center_length)
  puts "To finish, just hit return twice".center(center_length)
  name = gets.chomp
  while !name.empty? do
    puts "Please enter the cohort of the student".center(center_length)
    month = gets.chomp
    if month.empty?
      month = "Unknown"
    end
    puts "Please enter the height of the student".center(center_length)
    height = gets.chomp
    if height.empty?
      height = "Unknown"
    end
    puts "Please enter the country of birth of the student".center(center_length)
    country = gets.chomp
    if country.empty?
      country = "Unknown"
    end
    puts "Please enter the hobbies of the student".center(center_length)
    hobby = gets.chomp
    if hobby.empty?
      hobby = "Unknown"
    end
    students << {:name => name, :cohort => month, :height => height, :country_of_birth => country, :hobbies => hobby}
    puts "Now we have #{students.count} students".center(center_length)
    puts "Please enter the names of the students".center(center_length)
    name = gets.chomp
  end
  students
end

def print_header
  center_length = 48
  puts "The students of Villains Academy".center(center_length)
  puts "-------------".center(center_length)
end

def print(students)
  center_length = 48
  students.each do |student| 
  puts "Name: #{student[:name]}
        Cohort: #{student[:cohort]}
        Height: #{student[:height]}
        Country of birth: #{student[:country_of_birth]}
        Hobbies: #{student[:hobbies]}".lines.map { |line| line.strip.center(center_length) }.join("\n")
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

students = input_students
print_header
print(students)
print_footer(students)


  