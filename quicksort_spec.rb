require 'spec'
require 'quicksorter'

describe QuickSorter do
	
	it 'should order the empty list' do
		QuickSorter.sort([]).should == []
	end
	
end