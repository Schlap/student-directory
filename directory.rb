

@students = [] # an empty array accessblie to all methods
def print_header
	print "\nThe students of the September 2014 cohort at Makers Academy\n"
	print "-----------------------------------------------------------\n"
end


def print_students_list
	@students.each_with_index do |student, index|
		print "\n#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)\n"
	end
end

def print_footer
	print "\nOverall, we have #{@students.length} phenomenal students!"
	print "\n"
end

def input_students
	print "\n"
	print "Please enter the name of the student\n"
	print "To finish just hit return twice\n"
#get the first name
name = STDIN.gets.chomp
#while the name is not empty, repeat this code
while !name.empty? do 
	#add the student hash to the array
	@students << {:name => name, :cohort => :september}
	print "\nNow we have #{@students.length} students\n"
	#get another name from the user
	name = STDIN.gets.chomp
	end
end

def print_menu
	# 1. print the menu and ask the user what to do
		print "\n"
		puts "1. Input the students"
		puts "2. Show the students"
		puts "3. Save the list to students.csv"
		puts "4. Load the list from students.csv"
		puts "9. Exit" #9. because we'll be adding more items
end

def show_students
	print_header
	print_students_list
	print_footer
end

def save_students
	#open the file for writing
	file = File.open("students.csv", "w")
	#iterate over the array of students
	@students.each do |student|
	student_data = [student[:name], student[:cohort]]
	csv_line = student_data.join(",")
	file.puts csv_line
	end
	file.close
end

def load_students(filename = "students.csv")
	file = File.open("students.csv", "r")
	file.readlines.each do |line|
	name, cohort = line.chomp.split(',')
	  @students << {:name => name, :cohort => cohort.to_sym}
	end
	file.close
end

def try_load_students
	filename = ARGV.first # first argument from the command line
	return if filename.nil? # get out of the method if it isn't given
	if File.exists?(filename) # if it exists
	load_students(filename)
	puts "Loaded #{@students.length} from #{filename}"
  else #if it doesn't exist 
  	puts "Sorry, #{filename} does not exist."
  	exit # quit program
  end
end

def process(selection)
	case selection
		#3. do what the user has asked
		when "1"
			input_students
		when "2"
			show_students
		when "3"
			save_students
		when "4"
			load_students
		when "5"
			try_load_students
		when "9"
			exit #this will cause the program to terminate
		else
			puts "I don't know what you meant, try again"
	end
end

def interactive_menu
	loop do 
		print_menu
		process(STDIN.gets.chomp)
  end
end

try_load_students
interactive_menu