students = [
  {:name => "Dr. Hannibal Lecter", :cohort => :november},
  {:name => "Darth Vader", :cohort => :november},
  {:name => "Nurse Ratched", :cohort => :november},
  {:name => "Michael Corleone", :cohort => :november},
  {:name => "Alex DeLarge", :cohort => :november},
  {:name => "The Wicked Witch of the West", :cohort => :november},
  {:name => "Terminator", :cohort => :november},
  {:name => "Freddy Krueger", :cohort => :november},
  {:name => "The Joker", :cohort => :november},
  {:name => "Joffrey Baratheon", :cohort => :november},
  {:name => "Norman Bates", :cohort => :november}
]
def print_header
  puts "Search for a student"
  puts "-------------"
end

def print(students)
  students_begin_with = []
  letter = gets.chomp
  students.each do |student|
    if student[:name].start_with?(letter.upcase)
      students_begin_with << student[:name]
    end
  end
  puts students_begin_with
  puts "There are #{students_begin_with.count} students that begin with the letter '#{letter.upcase}'"
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end


print_header
print(students)
print_footer(students)
