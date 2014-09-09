
@students = [] # an empty array accessblie to all methods
def print_header 
	puts 'The students of the September 2014 cohort at Makers Academy'
	puts "-----------------------------------------------------------"
end

def print_students_list
	@students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer
	puts "Overall, we have #{@students.length} phenomenal students!"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish just hit return twice"
#get the first name
name = gets.chomp
#while the name is not empty, repeat this code
while !name.empty? do 
	#add the student hash to the array
	@students << {:name => name, :cohort => :september}
	puts "Now we have #{@students.length} students"
	#get another name from the user
	name = gets.chomp
	end
end

def print_menu
	# 1. print the menu and ask the user what to do
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit" #9. because we'll be adding more items
end

def show_students
	print_header
	print_students_list
	print_footer
end

def process(selection)
	case selection
		#3. do what the user has asked
		when "1"
			students = input_students
		when "2"
			show_students
		when "9"
			exit #this will cause the program to terminate
		else
			puts "I don't know what you meant, try again"
	end
end

def interactive_menu
	students = []
	loop do 
		print_menu
		process(gets.chomp)
  end
end



interactive_menu