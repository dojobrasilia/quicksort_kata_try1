class QuickSorter
	
	def self.sort(list)
		unless (list.size < 2)
			if (list[0] > list[1])
				swapped = list[0]
				list[0] = list[1]
				list[1] = swapped
			end
		end
		list
	end
	
end
