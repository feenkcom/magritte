Extension { #name : #Symbol }

{ #category : #'*magritte-model-converting' }
Symbol >> asAccessor [
	<gsCode: nil>
	
	^ MASelectorAccessor selector: self
]

{ #category : #'*Magritte-Model' }
Symbol >> optionFor: anObject ifPresent: aBlock [
	aBlock value: (anObject perform: self)
]
