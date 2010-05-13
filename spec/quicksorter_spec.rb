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
	
end