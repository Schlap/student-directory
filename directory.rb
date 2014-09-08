#lets puts all students into an array
students = [
{:name => "Enrique Comba Riepenhausen", :cohort => :september},
{:name => "Stephen Llolyd", :cohort => :september},
{:name => "Alex Peattle", :cohort => :september},
{:name => "Vic 329", :cohort => :september},
{:name => "Nicole Pell", :cohort => :september},
{:name => "Bernard", :cohort => :september},
{:name => "Elena Garrone", :cohort => :september},
{:name => "Yvette Cook", :cohort => :september},
{:name => "Stephen Giles", :cohort => :september},
{:name => "Ana Isabel Nogal", :cohort => :september},
{:name => "Craigh 44", :cohort => :september},
{:name => "Tim Scully", :cohort => :september},
{:name => "Ella Schofield", :cohort => :september},
{:name => "Fadie H", :cohort => :september},
{:name => "Mala 23", :cohort => :september},
{:name => "Zrasool88", :cohort => :september},
{:name => "Galicians", :cohort => :september},
{:name => "Dan Jocutler", :cohort => :september},
{:name => "Camilla Van Klinken", :cohort => :september},
{:name => "Sandrine", :cohort => :september},
{:name => "James Ascarter", :cohort => :september},
{:name => "Sl Stevens", :cohort => :september},
{:name => "Schlap", :cohort => :september},
{:name => "Andrew Hercules", :cohort => :september},
{:name => "Karine Nielsen", :cohort => :september},
{:name => "Andrew Snead", :cohort => :september},
{:name => "Rachel Nolan", :cohort => :september},
{:name => "Galalag", :cohort => :september},
{:name => "Anna Schechter", :cohort => :september},
{:name => "Alex Fakhri", :cohort => :september},
{:name => "Denise", :cohort => :september},
{:name => "Andrew Harrison", :cohort => :september}]
#print title using method

def print_header 
	puts 'The students of the September 2014 cohort at Makers Academy'
	puts "-----------------------------------------------------------"
end

def print(students)
	students.each do |student| 
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(students)
	puts "Overall, we have #{students.length} phenomenal students!"
end

print_header
print(students)
print_footer(students)