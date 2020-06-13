Class {
	#name : #UkuleleTutor,
	#superclass : #Object,
	#instVars : [
		'lessons',
		'songs',
		'tabProviders'
	],
	#classVars : [
		'UniqueInstance'
	],
	#category : #Ukulele
}

{ #category : #'instance creation' }
UkuleleTutor class >> instance [
	^ UniqueInstance ifNil: [ UniqueInstance := self new ]
]

{ #category : #'instance creation' }
UkuleleTutor class >> open [
	<script>
	^ self instance inspect.
]

{ #category : #accessing }
UkuleleTutor >> ensureTabProviderAt: aUrl [
	^ self tabProviders
			detect: [ :e | e servesURL: aUrl ]
			ifNone: [ 
				self tabProviders add: (UkTabProvider new url: aUrl; yourself) ]
]

{ #category : #accessing }
UkuleleTutor >> lessons [
	^ lessons
]

{ #category : #accessing }
UkuleleTutor >> lessons: anObject [
	lessons := anObject
]

{ #category : #accessing }
UkuleleTutor >> songs [
	^ songs
]

{ #category : #accessing }
UkuleleTutor >> songs: anObject [
	songs := anObject
]

{ #category : #accessing }
UkuleleTutor >> tabProviders [
	^ tabProviders ifNil: [ tabProviders := OrderedCollection new ]
]

{ #category : #accessing }
UkuleleTutor >> tabProviders: anObject [
	tabProviders := anObject
]
