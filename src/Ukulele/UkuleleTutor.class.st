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
	#category : #'Ukulele-Core'
}

{ #category : #examples }
UkuleleTutor class >> exampleAddLesson [
	<sampleInstance>
	| result |
	result := UkuleleTutor exampleInstance.
	result lessons add: UkLesson example.
	^ result
]

{ #category : #examples }
UkuleleTutor class >> exampleAddProvider [
	<sampleInstance>
	| result |
	result := UkuleleTutor exampleInstance.
	result tabProviders add: UkTabProvider example.
	^ result
]

{ #category : #examples }
UkuleleTutor class >> exampleAddSong [
	<sampleInstance>
	| result |
	result := UkuleleTutor exampleInstance.
	result songs add: UkSong example.
	^ result
]

{ #category : #examples }
UkuleleTutor class >> exampleInstance [
	^ self new
]

{ #category : #'instance creation' }
UkuleleTutor class >> instance [
	^ UniqueInstance ifNil: [ UniqueInstance := self new ]
]

{ #category : #'instance creation' }
UkuleleTutor class >> open [
	<script>
	^ self instance inspect.
]

{ #category : #persistence }
UkuleleTutor class >> restoreFrom: anObject [

	UniqueInstance := anObject.
]

{ #category : #persistence }
UkuleleTutor class >> spData [
	^ UniqueInstance
]

{ #category : #private }
UkuleleTutor >> ensureTabProviderAt: aUrl [
	^ self tabProviders
			detect: [ :e | e servesURL: aUrl ]
			ifNone: [ 
				self tabProviders add: (UkTabProvider new url: aUrl; yourself) ]
]

{ #category : #accessing }
UkuleleTutor >> lessons [
	^ self maLazyFrom: self lessonsDescription
]

{ #category : #accessing }
UkuleleTutor >> lessons: anObject [
	lessons := anObject
]

{ #category : #'magritte-accessing' }
UkuleleTutor >> lessonsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #lessons;
		classes: { UkLesson };
		default: Bag new;
		yourself
]

{ #category : #accessing }
UkuleleTutor >> songs [
	^ self maLazyFrom: self songsDescription
]

{ #category : #accessing }
UkuleleTutor >> songs: anObject [
	songs := anObject
]

{ #category : #'magritte-accessing' }
UkuleleTutor >> songsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #songs;
		classes: { UkSong };
		default: Bag new;
		yourself
]

{ #category : #accessing }
UkuleleTutor >> tabProviders [
	^ self maLazyFrom: self tabProvidersDescription
]

{ #category : #accessing }
UkuleleTutor >> tabProviders: anObject [
	tabProviders := anObject
]

{ #category : #'magritte-accessing' }
UkuleleTutor >> tabProvidersDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #tabProviders;
		classes: { UkTabProvider };
		default: Bag new;
		yourself
]
