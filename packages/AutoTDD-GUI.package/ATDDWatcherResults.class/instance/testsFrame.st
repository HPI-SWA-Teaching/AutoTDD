building
testsFrame
	
	^ LayoutFrame new
		leftFraction: 0.3 offset: 0;
		topFraction: 0.1 offset: 0;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 offset: self buttonHeight negated;
		yourself