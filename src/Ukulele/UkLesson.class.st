Class {
	#name : #UkLesson,
	#superclass : #Object,
	#instVars : [
		'name',
		'url'
	],
	#category : #'Ukulele-Core'
}

{ #category : #examples }
UkLesson class >> example [
	<sampleInstance>
	
	^ UkLesson new
		url: 'https://youtu.be/Ailz-IgzeM4' asUrl;
		yourself.
]

{ #category : #accessing }
UkLesson >> name [
	^ name
]

{ #category : #accessing }
UkLesson >> name: anObject [
	name := anObject
]

{ #category : #'magritte-accessing' }
UkLesson >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #name;
		yourself
]

{ #category : #accessing }
UkLesson >> url [
	^ url
]

{ #category : #accessing }
UkLesson >> url: anObject [
	url := anObject
]

{ #category : #'magritte-accessing' }
UkLesson >> urlDescription [
	<magritteDescription>
	^ MAUrlDescription new
		accessor: #url;
		yourself
]

{ #category : #'as yet unclassified' }
UkLesson >> view [
	^ Smalltalk tools webBrowser openOn: self url.
]

{ #category : #'as yet unclassified' }
UkLesson >> viewDescription [
	<magritteActionDescription>
	^ MAActionDescription new
			action: #view;
			priority: 100;
			yourself
]
