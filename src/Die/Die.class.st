Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Die',
	#package : 'Die'
}

{ #category : 'accessing' }
Die >> faces [

	^ faces
]

{ #category : 'accessing' }
Die >> faces: anInteger [

	faces := anInteger
]

{ #category : 'as yet unclassified' }
Die >> roll [
	^ faces atRandom
]
