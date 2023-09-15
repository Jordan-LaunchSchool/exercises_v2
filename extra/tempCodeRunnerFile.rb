	p search_number_index = input_array.find_index(search_number)
		next if search_number_index.nil?
		current_index_difference = (search_number_index - index).abs