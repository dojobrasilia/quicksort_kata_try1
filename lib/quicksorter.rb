class QuickSorter
	
	def self.sort(list)

		if (list.size < 2)
			return list
		end
			
		pivot = list[0]
		
		desc_scanner = 1
		asc_scanner = 0
		
		if (pivot > list[desc_scanner])
			swap(list,asc_scanner,desc_scanner)
		end
			
		list
		
	end

	def self.swap(list, i, j)
		swapped = list[i]
		list[i] = list[j]
		list[j] = swapped
	end
	
end
