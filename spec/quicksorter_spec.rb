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

	
end