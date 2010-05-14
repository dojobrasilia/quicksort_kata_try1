class QuickSorter
	
	def self.sort(list,s=0,e=list.size-1)
	
		if ((e-s+1) < 2)
			return list
		end
			
		pivot_index = partition(list, s, e)
		sort(list, s, pivot_index-1)
		# sort(list, pivot_index, e)
		list
		
	end

	def self.partition(list, s, e) 

		list_size = (e-s+1)

		mid_point = (list_size/2).to_i + s
		pivot = list[mid_point]

		desc_scanner = (list_size-1)
		asc_scanner = 0
		
		while(desc_scanner > asc_scanner)
			
			while desc_scanner>0 and list[desc_scanner]>pivot do
				desc_scanner -= 1
			end
		
			while asc_scanner<(list_size-1) and list[asc_scanner]<pivot do
				asc_scanner += 1
			end
					
			if (desc_scanner > asc_scanner)
				swap(list,asc_scanner,desc_scanner)
			end
			
		end
		
		desc_scanner
		
	end

	def self.swap(list, i, j)
		swapped = list[i]
		list[i] = list[j]
		list[j] = swapped
	end
	
end
