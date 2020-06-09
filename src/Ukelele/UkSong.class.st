Class {
	#name : #UkSong,
	#superclass : #Object,
	#instVars : [
		'name',
		'author',
		'lessons',
		'original',
		'tabs'
	],
	#classInstVars : [
		'db'
	],
	#category : #Ukelele
}

{ #category : #accessing }
UkSong class >> db [
	^ db ifNil: [ db := OrderedCollection new ]
]

{ #category : #examples }
UkSong class >> exampleAddSong [
	| song |
	song := UkSong new
		name: 'I''m Yours' asUrl;
		author: 'Jason Mraz';
		yourself.
	UkSong db add: song
]

{ #category : #accessing }
UkSong >> author [
	^ author
]

{ #category : #accessing }
UkSong >> author: anObject [
	author := anObject
]

{ #category : #accessing }
UkSong >> lessons [
	^ lessons ifNil: [ lessons := OrderedCollection new ]
]

{ #category : #accessing }
UkSong >> lessons: anObject [
	lessons := anObject
]

{ #category : #accessing }
UkSong >> name [
	^ name
]

{ #category : #accessing }
UkSong >> name: anObject [
	name := anObject
]

{ #category : #accessing }
UkSong >> original [
	^ original
]

{ #category : #accessing }
UkSong >> original: anObject [
	original := anObject
]

{ #category : #accessing }
UkSong >> playOriginal [
	^ Smalltalk tools webBrowser openOn: original.
]

{ #category : #printing }
UkSong >> printOn: aStream [
	
	aStream
		nextPutAll: (name surroundedBy: '"');
		nextPutAll: ' by ';
		nextPutAll: self author
]

{ #category : #accessing }
UkSong >> tabs [
	^ tabs
]

{ #category : #accessing }
UkSong >> tabs: anObject [
	tabs := anObject
]

{ #category : #accessing }
UkSong >> viewDashboaard [
	self playOriginal.
	self tabs view.
	self lessons first view
]
