Class {
	#name : #UkuleleDB,
	#superclass : #SpFileDatabase,
	#category : #'Ukulele-Persistence'
}

{ #category : #accessing }
UkuleleDB class >> backupDirectoryParent [
	^ FileLocator dynabookData
]

{ #category : #'loading/saving' }
UkuleleDB class >> schema [

	^ { UkuleleTutor }.
]
