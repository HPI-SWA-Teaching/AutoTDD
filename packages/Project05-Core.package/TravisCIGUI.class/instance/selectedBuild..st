accessing
selectedBuild: aNumber

	selectedBuild := aNumber.
	self 
		changed: #selectedBuild;
		changed: #jobs;
		changed: #log