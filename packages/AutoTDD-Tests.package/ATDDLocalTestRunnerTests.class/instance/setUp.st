running
setUp
	
	super setUp.
	watcher := ATDDWatcher new.
	watcher categoriesToTest: #( 'AutoTDD-Dummy-Category' ).
	testrunner := ATDDLocalTestRunner newForWatcher: watcher