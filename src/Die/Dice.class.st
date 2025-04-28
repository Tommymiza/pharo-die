Class {
	#name : 'Dice',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Die',
	#package : 'Die'
}

{ #category : 'arithmetic' }
Dice >> + aDice [ 
	^self roll + aDice roll
]

{ #category : 'adding' }
Dice >> add: aDie [ 
	dice add: aDie
]

{ #category : 'accessing' }
Dice >> dice [
	^ dice size
]

{ #category : 'initialization' }
Dice >> initialize [ 
	super initialize.
	dice := OrderedCollection new
]

{ #category : 'as yet unclassified' }
Dice >> roll [
	| s |
	s := 0.
	dice do: [ :die | s := s + die roll ].
	^ s
	
]
