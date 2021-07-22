require 'date'
students = [
  {:name => "Dr. Hannibal Lecter", :cohort => :february},
  {:name => "Darth Vader", :cohort => :february},
  {:name => "Nurse Ratched", :cohort => :march},
  {:name => "Michael Corleone", :cohort => :march},
  {:name => "Alex DeLarge", :cohort => :july},
  {:name => "The Wicked Witch of the West", :cohort => :july},
  {:name => "Terminator", :cohort => :november},
  {:name => "Freddy Krueger", :cohort => :november},
  {:name => "The Joker", :cohort => :november},
  {:name => "Joffrey Baratheon", :cohort => :november},
  {:name => "Norman Bates", :cohort => :november}
]

def print_header
  center_length = 48
  puts "The students of Villains Academy".center(center_length)
  puts "-------------".center(center_length)
end

def print(students)
  students_by_cohort = {}
  students.each do |student| 
    cohort = student[:cohort]
    if students_by_cohort[cohort] == nil
      students_by_cohort[cohort] =[]
    end
    students_by_cohort[cohort] << student[:name]
  end
  
  students_by_cohort.each do |key, value|
    puts "#{key.to_s.capitalize}: #{value.join(", ")}"
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


print_header
print(students)
print_footer(students)


  