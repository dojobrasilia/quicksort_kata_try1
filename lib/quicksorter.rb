class QuickSorter
	
	def self.sort(list)

		if (list.size < 2)
			return list
		end
			
		pivot = list[0]
		
		pivot_position = 1
		if (pivot > list[pivot_position])
			swap(list,0,pivot_position)
		end
			
		list
		
	end

	def self.swap(list, i, j)
		swapped = list[i]
		list[i] = list[j]
		list[j] = swapped
	end
	
end
