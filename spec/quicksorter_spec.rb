require 'spec'
require 'spec/autorun'
require 'lib/quicksorter.rb'

describe QuickSorter do
	
	it 'should order the empty list' do
		QuickSorter.sort([]).should == []
	end
	
	it 'should order the unary list' do
		QuickSorter.sort([1]).should == [1]
	end
	
	it 'should order the ordered list' do
		QuickSorter.sort([1,2,3]).should == [1,2,3]
	end
	
	it 'should swap the two only out-of-order elements' do
		QuickSorter.sort([2,1]).should == [1,2]
	end
	
	it 'should swap the two first elements' do
		QuickSorter.sort([2,1,3]).should == [1,2,3]
	end

	it 'should swap the two last elements' do
		QuickSorter.sort([1,3,2]).should == [1,2,3]
	end

	it 'should order three element when it needs only one partition' do
		QuickSorter.sort([1,2,3]).should == [1,2,3]
		QuickSorter.sort([1,3,2]).should == [1,2,3]
		
		QuickSorter.sort([2,1,3]).should == [1,2,3]
		QuickSorter.sort([3,2,1]).should == [1,2,3]

		# these need two partitions
		# QuickSorter.sort([2,3,1]).should == [1,2,3]
		# QuickSorter.sort([3,1,2]).should == [1,2,3]

	end

	it 'should make a partition that needs more than one swap' do
		QuickSorter.sort([5,4,3,2,1]).should == [1,2,3,4,5]
	end

	it 'should make two partitions' do
		QuickSorter.sort([2,3,1]).should == [1,2,3]
	end
	
end