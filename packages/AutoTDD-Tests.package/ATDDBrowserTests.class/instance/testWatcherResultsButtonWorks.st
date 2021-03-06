tests
testWatcherResultsButtonWorks
	
	| watcherWindow resultsWindow watcher selection watchedClasses testedCategories |
	
	watcherWindow := browser createWatcher.
	watcherWindow selectedCategories: (Set newFrom: { #'AutoTDD-Dummy-Success-Tests' }).
	watcherWindow classwiseCategorySelection: true.
	watchedClasses := Set newFrom: { #'TestRunnerDummy22Test' . #'TestRunnerDummy23Test' }.
	watcherWindow selectedCategoryClasses: watchedClasses.
	testedCategories := Set newFrom: { #'AutoTDD-Dummy-Setting-Tests' }.
	watcherWindow selectedTestCategories: testedCategories.
	watcherWindow save.
	watcher := watcherWindow watcher.
	self assert: self fetchCopyOfWatchers size = 1.
	selection := OrderedCollection new.
	selection add: watcher.
	browser selectedWatchers: selection.
	resultsWindow := (browser openResultsForSelectedTestingEntitiesOfType: #watcher) first.
	windowsToDelete add: resultsWindow.
	self assert: resultsWindow target == watcher.
	self assert: resultsWindow data == watcher localTestRunner.
	self assert: resultsWindow testResults == watcher localTestRunner testResults