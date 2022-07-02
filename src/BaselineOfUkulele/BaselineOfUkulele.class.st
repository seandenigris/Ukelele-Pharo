Class {
	#name : #BaselineOfUkulele,
	#superclass : #BaselineOf,
	#category : #BaselineOfUkulele
}

{ #category : #testing }
BaselineOfUkulele class >> isDynabook [
	^ true
]

{ #category : #baselines }
BaselineOfUkulele >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec
			baseline: 'Magritte' with: [
				spec repository: 'github://seandenigris/Magritte' ];
			baseline: 'SimplePersistence' with: [
				spec repository: 'github://seandenigris/Simple-Persistence' ];
			baseline: 'ResourcesLive' with: [
				spec repository: 'github://seandenigris/Resources-Live' ].
		spec package: #Ukulele with: [
				spec requires: #('Magritte' 'SimplePersistence' 'ResourcesLive'). ]. ].
]
