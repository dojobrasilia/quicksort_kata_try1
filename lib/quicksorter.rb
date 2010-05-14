class QuickSorter
	
	def self.sort(list)

		if (list.size < 2)
			return list
		end
			
		mid_point = list.size/2 - 1
		pivot = list[mid_point]
		
		high = (list.size-1)
		i = high
		while i>0 and list[i]>pivot do
			i-=1
		end
		
		desc_scanner = i # first element from right to left that is less than or equal to pivot
		asc_scanner = 0 # first element from left to right that is grater than or equal to pivot
		
		if (list[desc_scanner] >= pivot)
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
