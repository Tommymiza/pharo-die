Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#classInstVars : [
		'd'
	],
	#category : 'Die',
	#package : 'Die'
}

{ #category : 'tests' }
DieTest >> testDiceAdd [

	| d1 d2 h1 d3 d4 h2 |
	d1 := Die new.
	d1 faces: 6.

	d2 := Die new.
	d2 faces: 6.
	h1 := Dice new.
	h1
		add: d1;
		add: d2.

	d3 := Die new.
	d3 faces: 10.

	d4 := Die new.
	d4 faces: 6.
	h2 := Dice new.
	h2
		add: d3;
		add: d4.

	100 timesRepeat: [
		h1 + h2 between: h1 dice + h2 dice and: 28 ]
]

{ #category : 'tests' }
DieTest >> testDiceRoll [

	| d1 d2 h |
	d1 := Die new.
	d1 faces: 10.

	d2 := Die new.
	d2 faces: 6.
	h := Dice new.
	h
		add: d1;
		add: d2.
	100 timesRepeat: [ self assert: (h roll between: 2 and: 16) ]
]

{ #category : 'tests' }
DieTest >> testDieRoll [

	| d |
	d := Die new.
	d faces: 6.
	100 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]

{ #category : 'tests' }
DieTest >> testGetterAndSetter [

	| d |
	d := Die new.
	d faces: 6.
	self assert: d faces equals: 6
]

{ #category : 'tests' }
DieTest >> testHandleDice [

	| d1 d2 h|
	d1 := Die new.
	d2 := Die new.
	h := Dice new.
	h
		add: d1;
		add: d1.
	self assert: h dice equals: 2
]
