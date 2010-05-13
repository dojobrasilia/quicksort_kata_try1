class QuickSorter
	
	def self.sort(list)

		if (list.size < 2)
			return list
		end
			
		pivot = list[0]
		
		if (pivot > list[1])
			return [list[1], pivot]
		end
			
		list
		
	end

	def self.swap(list, i, j)
		swapped = list[i]
		list[i] = list[j]
		list[j] = swapped
	end
	
end
