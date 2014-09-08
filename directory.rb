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
#first we print the list of students
puts "The students of the September 2014 cohort at Makers Academy"
puts "-----------------------------------------------------------"

students.each do |student| 
	puts student
end
#finally, we print the total
puts "Overall, we have #{students.length} phenomenal students!"