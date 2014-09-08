#lets puts all students into an array
students = ["Enrique Comba Riepenhausen",
"Stephen Llolyd",
"Alex Peattle",
"Vic 329",
"Nicole Pell",
"Bernard",
"Elena Garrone",
"Yvette Cook",
"Stephen Giles",
"Ana Isabel Nogal",
"Craigh 44",
"Tim Scully",
"Ella Schofield",
"Fadie H",
"Mala 23",
"Zrasool88",
"Galicians",
"Dan Jocutler",
"Camilla Van Klinken",
"Sandrine",
"James Ascarter",
"Sl Stevens",
"Schlap",
"Andrew Hercules",
"Karine Nielsen",
"Andrew Snead",
"Rachel Nolan",
"Galalag",
"Anna Schechter",
"Alex Fakhri",
"Denise",
"Andrew Harrison"]
#print title using method

def print_header 
	puts 'The students of the September 2014 cohort at Makers Academy'
	puts "-----------------------------------------------------------"
end

def print_names(names)
	names.each do |name| 
		puts name
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} phenomenal students!"
end
#nothing happens until we call the methods
print_header
print_names(students)
print_footer(students)