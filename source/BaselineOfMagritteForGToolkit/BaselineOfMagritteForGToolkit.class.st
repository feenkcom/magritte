Class {
	#name : #BaselineOfMagritteForGToolkit,
	#superclass : #BaselineOf,
	#category : #BaselineOfMagritteForGToolkit
}

{ #category : #baseline }
BaselineOfMagritteForGToolkit >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'Grease' with: [
				spec repository: 'github://feenkcom/Grease:v1.8.1/repository' ].

		spec package: 'Magritte-Model' with: [
			spec requires: #('Grease') ].
	]
]
