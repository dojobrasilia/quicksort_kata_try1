class QuickSorter
	
	def self.sort(list)

		if (list.size < 2)
			return list
		end
			
		mid_point = (list.size/2).to_i
		pivot = list[mid_point]
		
		desc_scanner = (list.size-1)
		while desc_scanner>0 and list[desc_scanner]>pivot do
			desc_scanner -= 1
		end
		
		asc_scanner = 0 # first element from left to right that is greater than or equal to pivot
					
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
