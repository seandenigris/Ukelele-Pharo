Class {
	#name : #BaselineOfUkulele,
	#superclass : #BaselineOf,
	#category : #BaselineOfUkulele
}

{ #category : #baselines }
BaselineOfUkulele >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec
			baseline: 'SimplePersistence' with: [
				spec
					repository: 'github://seandenigris/Simple-Persistence' ];
			baseline: 'ResourcesLive' with: [
				spec repository: 'github://seandenigris/ResourcesLive' ].
		spec package: #Ukulele with: [
				spec requires: #('SimplePersistence' 'ResourcesLive'). ]. ].

]
