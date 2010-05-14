class QuickSorter
	
	def self.sort(list)

		if (list.size < 2)
			return list
		end
			
		mid_point = list.size/2 - 1
		pivot = list[mid_point]
		
		desc_scanner = 1
		asc_scanner = 0
		
		unless (pivot > list[desc_scanner])
			desc_scanner = 0
			asc_scanner = 0			
		end
			
		if (desc_scanner > asc_scanner)
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
