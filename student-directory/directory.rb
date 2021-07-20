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
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  less_than_12_chars = []
  students.each do |student|
    if student[:name].length < 12
      less_than_12_chars << student[:name]
    end
  end
  puts less_than_12_chars
  puts "There are #{less_than_12_chars.count} students with names less than 12 charaters long"
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end


print_header
print(students)
print_footer(students)
