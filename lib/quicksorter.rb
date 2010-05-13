class QuickSorter
	
	def self.sort(list)
		unless (list.size < 2)
			
			pivot = list[0]
			
			if (pivot > list[1])
				return [list[1], pivot]
			end
			
		end
		list
	end

	def self.swap(list, i, j)
		swapped = list[i]
		list[i] = list[j]
		list[j] = swapped
	end
	
end
