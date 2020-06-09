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

{ #category : #accessing }
UkTabs >> hasFloatingChords [
	^ hasFloatingChords
]

{ #category : #accessing }
UkTabs >> hasFloatingChords: anObject [
	hasFloatingChords := anObject
]

{ #category : #accessing }
UkTabs >> isTransposable [
	^ isTransposable
]

{ #category : #accessing }
UkTabs >> isTransposable: anObject [
	isTransposable := anObject
]

{ #category : #accessing }
UkTabs >> url [
	^ url
]

{ #category : #accessing }
UkTabs >> url: anObject [
	url := anObject
]

{ #category : #'as yet unclassified' }
UkTabs >> view [
	^ Smalltalk tools webBrowser openOn: self url.
]
