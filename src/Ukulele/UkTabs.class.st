Class {
	#name : #UkTabs,
	#superclass : #Object,
	#instVars : [
		'url',
		'hasFloatingChords',
		'areChangesPinpointed',
		'isTransposable'
	],
	#category : #Ukulele
}

{ #category : #'as yet unclassified' }
UkTabs class >> exampleCreating [
	^ UkTabs new
			url: 'https://www.ukulele-tabs.com/uke-songs/uke-songs/jason-mraz/im-yours-uke-tab-11804.html' asUrl;
			areChangesPinpointed: false;
			hasFloatingChords: true;
			isTransposable: true;
			yourself
]

{ #category : #accessing }
UkTabs >> areChangesPinpointed [
	^ areChangesPinpointed
]

{ #category : #accessing }
UkTabs >> areChangesPinpointed: anObject [
	areChangesPinpointed := anObject
]

{ #category : #'magritte-accessing' }
UkTabs >> areChangesPinpointedDescription [
	<magritteDescription>
	^ MABooleanDescription new
		accessor: #areChangesPinpointed;
		priority: 400;
		yourself
]

{ #category : #private }
UkTabs >> defaultProvider [
	self url ifNil: [ ^ nil ].
	^ UkuleleTutor instance tabProviders
			detect: [ :e | e servesURL: self url ]
			ifNone: [ UkuleleTutor instance ensureTabProviderAt: self url ]
]

{ #category : #accessing }
UkTabs >> hasFloatingChords [
	^ self provider
		ifNotNil: [ :p | p hasFloatingChords ]
		ifNil: [ hasFloatingChords ]
]

{ #category : #accessing }
UkTabs >> hasFloatingChords: anObject [
	hasFloatingChords := anObject.
	self updateTabProvider: [ :tp | tp hasFloatingChords: hasFloatingChords ].
]

{ #category : #'magritte-accessing' }
UkTabs >> hasFloatingChordsDescription [
	<magritteDescription>
	^ MABooleanDescription new
		accessor: #hasFloatingChords;
		default: (self provider ifNotNil: [ :tp | hasFloatingChords ]);
		priority: 300;
		yourself
]

{ #category : #accessing }
UkTabs >> isTransposable [
	^ self provider
		ifNotNil: [ :p | p isTransposable ]
		ifNil: [ isTransposable ]
]

{ #category : #accessing }
UkTabs >> isTransposable: aBoolean [
	isTransposable := aBoolean.
	self updateTabProvider: [ :tp | tp isTransposable: isTransposable ].
]

{ #category : #'magritte-accessing' }
UkTabs >> isTransposableDescription [
	<magritteDescription>
	^ MABooleanDescription new
		accessor: #isTransposable;
		default: (self provider ifNotNil: [ :tp | isTransposable ]);
		priority: 200;
		yourself
]

{ #category : #private }
UkTabs >> provider [
	^ self defaultProvider
]

{ #category : #'magritte-accessing' }
UkTabs >> providerDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #provider;
		classes:
			(Set new
				add: UkTabProvider;
				yourself);
		default: self defaultProvider;
		beReadonly;
		yourself
]

{ #category : #private }
UkTabs >> updateTabProvider: aBlock [

	self provider ifNotNil: [ :p | aBlock value: p ]
]

{ #category : #accessing }
UkTabs >> url [
	^ url
]

{ #category : #accessing }
UkTabs >> url: aUrl [
	url := aUrl.
	self updateTabProvider: [ :e | ]
]

{ #category : #'magritte-accessing' }
UkTabs >> urlDescription [
	<magritteDescription>
	^ MAUrlDescription new
		accessor: #url;
		priority: 100;
		yourself
]

{ #category : #viewing }
UkTabs >> view [
	^ Smalltalk tools webBrowser openOn: self url.
]

{ #category : #viewing }
UkTabs >> viewDescription [
	<magritteActionDescription>
	^ MAActionDescription new
			action: #view;
			priority: 100;
			yourself
]
