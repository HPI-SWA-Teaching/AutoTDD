constants
statusDictionary
	
	^ Dictionary
		newFrom: {
			'errored' -> #error.
			'failed' -> #failure.
			'passed' -> #successful.
			'executing' -> #pending.
			'unexecuted' -> #pending.
			'executed' -> #pending.
			'unknown' -> #pending
		}