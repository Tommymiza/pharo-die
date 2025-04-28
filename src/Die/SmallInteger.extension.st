Extension { #name : 'SmallInteger' }

{ #category : '*Die' }
SmallInteger >> D10 [
	^ self D: 10
]

{ #category : '*Die' }
SmallInteger >> D20 [
	^ self D:20
]

{ #category : '*Die' }
SmallInteger >> D: anInteger [

	| h d |
	h := Dice new.
	self timesRepeat: [
			d := Die new faces: anInteger.
			h add: d ].
	^ h roll
]
