running
tearDown
	
	super tearDown.
	browser removeWatchers: browser watchers.
	preTestWatchers
		do: [ :each | each valid: true.
			browser watchers addLast: each ].
	browser removeTravisStatuses: browser travisStatuses.
	preTestTravisStatuses
		do: [ :each | each valid: true.
			browser travisStatuses addLast: each ].
	browser removeGitHubActions: browser gitHubActions.
	preTestGitHubActions
		do: [ :each | each valid: true.
			browser gitHubActions addLast: each ].
	browser resumeAll.
	windowsToDelete do: [ :each | each changed: #close ].
	mockAPI destroy.
	self class testHasRun: false