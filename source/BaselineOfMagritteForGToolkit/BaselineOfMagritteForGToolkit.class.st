Class {
	#name : #BaselineOfMagritteForGToolkit,
	#superclass : #BaselineOf,
	#category : #BaselineOfMagritteForGToolkit
}

{ #category : #baseline }
BaselineOfMagritteForGToolkit >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			baseline: 'GreaseForGToolkit'
			with: [
				spec repository: 'github://feenkcom/Grease:feenk/repository' ].

		#('Magritte-Model'
			'Magritte-Model-Core'
			'Magritte-Model-Visitor'
			'Magritte-Model-Description'
			'Magritte-Model-Accessor'
			'Magritte-Model-Memento'
			'Magritte-Model-Builder'
			'Magritte-Model-Exception'
			'Magritte-Model-Manifest'
			'Magritte-Model-Models'
			'Magritte-Model-Utility')
			do: [ :packageName |
				spec
					package: packageName
					with: [ spec requires: #( 'GreaseForGToolkit' ) ] ] ]
]
