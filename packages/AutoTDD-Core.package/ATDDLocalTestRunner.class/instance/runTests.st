action
runTests
	
	self testSuite: (self buildTestSuiteFromClasses: self watcher allTestClasses).
	self runTestSuite