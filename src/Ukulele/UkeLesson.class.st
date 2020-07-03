Class {
	#name : #UkeLesson,
	#superclass : #Object,
	#instVars : [
		'name',
		'url'
	],
	#category : #'Ukulele-Core'
}

{ #category : #examples }
UkeLesson class >> example [
	<sampleInstance>
	
	^ UkeLesson new
		url: 'https://youtu.be/Ailz-IgzeM4' asUrl;
		yourself.
]

{ #category : #accessing }
UkeLesson >> name [
	^ name
]

{ #category : #accessing }
UkeLesson >> name: anObject [
	name := anObject
]

{ #category : #'magritte-accessing' }
UkeLesson >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #name;
		yourself
]

{ #category : #accessing }
UkeLesson >> url [
	^ url
]

{ #category : #accessing }
UkeLesson >> url: anObject [
	url := anObject
]

{ #category : #'magritte-accessing' }
UkeLesson >> urlDescription [
	<magritteDescription>
	^ MAUrlDescription new
		accessor: #url;
		yourself
]

{ #category : #'as yet unclassified' }
UkeLesson >> view [
	^ Smalltalk tools webBrowser openOn: self url.
]

{ #category : #'as yet unclassified' }
UkeLesson >> viewDescription [
	<magritteActionDescription>
	^ MAActionDescription new
			action: #view;
			priority: 100;
			yourself
]
