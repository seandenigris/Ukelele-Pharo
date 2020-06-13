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
	#category : #Ukulele
}

{ #category : #accessing }
UkSong class >> db [
	^ db ifNil: [ db := OrderedCollection new ]
]

{ #category : #examples }
UkSong class >> exampleAddSong [
	UkSong db add: self sampleSong
]

{ #category : #examples }
UkSong class >> exampleSong [
	<sampleInstance>
	^ UkSong new
		name: 'I''m Yours';
		author: 'Jason Mraz';
		yourself.
]

{ #category : #accessing }
UkSong >> author [
	^ author
]

{ #category : #accessing }
UkSong >> author: anObject [
	author := anObject
]

{ #category : #'magritte-accessing' }
UkSong >> authorDescription [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #author;
		yourself
]

{ #category : #accessing }
UkSong >> lessons [
	^ lessons ifNil: [ lessons := OrderedCollection new ]
]

{ #category : #accessing }
UkSong >> lessons: anObject [
	lessons := anObject
]

{ #category : #'magritte-accessing' }
UkSong >> lessonsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #lessons;
		yourself
]

{ #category : #accessing }
UkSong >> name [
	^ name
]

{ #category : #accessing }
UkSong >> name: anObject [
	name := anObject
]

{ #category : #'magritte-accessing' }
UkSong >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #name;
		yourself
]

{ #category : #accessing }
UkSong >> original [
	^ original
]

{ #category : #accessing }
UkSong >> original: anObject [
	original := anObject
]

{ #category : #'magritte-accessing' }
UkSong >> originalDescription [
	<magritteDescription>
	^ MAUrlDescription new
		accessor: #original;
		yourself
]

{ #category : #accessing }
UkSong >> playOriginal [
	^ Smalltalk tools webBrowser openOn: original.
]

{ #category : #accessing }
UkSong >> playOriginalDescription [
	<magritteActionDescription>
	^ MAActionDescription new
			action: #playOriginal;
			priority: 200;
			yourself
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

{ #category : #'magritte-accessing' }
UkSong >> tabsDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #tabs;
		classes: (Set new add: UkTabs; yourself);
		yourself
]

{ #category : #accessing }
UkSong >> viewDashboard [
	self playOriginal.
	self tabs view.
	self lessons first view
]

{ #category : #accessing }
UkSong >> viewDashboardDescription [
	<magritteActionDescription>
	^ MAActionDescription new
			action: #viewDashboard;
			priority: 100;
			yourself
]
