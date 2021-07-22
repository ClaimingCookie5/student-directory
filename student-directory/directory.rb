def print_header
  center_length = 48
  puts "The students of Villains Academy".center(center_length)
  puts "-------------".center(center_length)
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.gsub("\n", "")
  while !name.empty? do
    puts "Please enter the chort of #{name}"
    month = gets.gsub("\n", "")
    students << {:name => name, :cohort => month}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print(students)
  center_length = 48
  students_by_cohort = {}
  students.each do |student| 
    cohort = student[:cohort]
    if students_by_cohort[cohort] == nil
      students_by_cohort[cohort] =[]
    end
    students_by_cohort[cohort] << student[:name]
  end
  
  students_by_cohort.each do |key, value|
    puts "#{key.to_s.capitalize}: #{value.join(", ").capitalize}".center(center_length)
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


  