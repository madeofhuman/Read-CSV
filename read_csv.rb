require 'csv'

def extract_from_slatecode_csv (path_to_csv_file)
	# check if file exists
	if File.file? path_to_csv_file or File.directory? path_to_csv_file
		table = CSV.read path_to_csv_file # read csv file
		i = 0
		resulting_string = ""

		# iterate over table
		while i < table.length
			resulting_string.concat(table[i][i]+" ") # select value of resultant cell from each iteration
			i+=1
		end

		resulting_string = resulting_string.chomp
		puts resulting_string
	else
		puts "File not found"
	end
end

extract_from_slatecode_csv 'slatecode test.csv'