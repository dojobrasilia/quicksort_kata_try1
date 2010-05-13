class QuickSorter
	
	def self.sort(list)
		unless (list.size < 2)
			if (list[0] > list[1])
				swap(list,0,1)
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
