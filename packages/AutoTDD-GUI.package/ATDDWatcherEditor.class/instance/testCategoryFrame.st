building
testCategoryFrame
	
	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 0 offset: self inputFieldHeight;
		rightFraction: 0.25 offset: 0;
		bottomFraction: 1 offset: self bottomSpace negated;
		yourself