require 'spec'
require 'spec/autorun'
require 'lib/quicksorter.rb'

describe QuickSorter do
	
	it 'should order the empty list' do
		QuickSorter.sort([]).should == []
	end
	
end