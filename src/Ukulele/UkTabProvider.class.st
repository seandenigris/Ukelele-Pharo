Class {
	#name : #UkTabProvider,
	#superclass : #Object,
	#instVars : [
		'url',
		'hasFloatingChords',
		'isTransposable'
	],
	#category : #Ukulele
}

{ #category : #example }
UkTabProvider class >> example [
	<sampleInstance>
	^ UkTabProvider new
		url: 'https://www.ukulele-tabs.com' asUrl;
		hasFloatingChords: true;
		isTransposable: true;
		yourself
]

{ #category : #accessing }
UkTabProvider >> hasFloatingChords [
	^ self maLazyFrom: self hasFloatingChordsDescription
]

{ #category : #accessing }
UkTabProvider >> hasFloatingChords: anObject [
	hasFloatingChords := anObject
]

{ #category : #'magritte-accessing' }
UkTabProvider >> hasFloatingChordsDescription [
	<magritteDescription>
	^ MABooleanDescription new
		accessor: #hasFloatingChords;
		yourself
]

{ #category : #accessing }
UkTabProvider >> isTransposable [
	^ self maLazyFrom: self isTransposableDescription
]

{ #category : #accessing }
UkTabProvider >> isTransposable: anObject [
	isTransposable := anObject
]

{ #category : #'magritte-accessing' }
UkTabProvider >> isTransposableDescription [
	<magritteDescription>
	^ MABooleanDescription new
		accessor: #isTransposable;
		yourself
]

{ #category : #printing }
UkTabProvider >> printOn: aStream [
	aStream
		nextPutAll: 'Tabs at ';
		print: url
]

{ #category : #'as yet unclassified' }
UkTabProvider >> servesURL: aUrl [ 
	^ self url host = aUrl host
]

{ #category : #accessing }
UkTabProvider >> url [
	^ self maLazyFrom: self urlDescription
]

{ #category : #accessing }
UkTabProvider >> url: aUrl [
	url := aUrl copy clearPath; queryRemoveAll
]

{ #category : #'magritte-accessing' }
UkTabProvider >> urlDescription [
	<magritteDescription>
	^ MAUrlDescription new
		accessor: #url;
		yourself
]
