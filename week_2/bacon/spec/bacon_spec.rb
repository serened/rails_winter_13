require 'bacon'

describe Bacon do 

	subject { Bacon.new }

	#passing before use of subject
	#it "is edible" do
	#	Bacon.new.edible?.should be_true
	# end

	its(:edible?) { should be_true }

	it "expired!" do 
		subject.expired! 
		subject.should_not be_edible
	end
end