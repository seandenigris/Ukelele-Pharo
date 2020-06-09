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
			baseline: 'PharoEnhancements' with: [
				spec repository: 'github://seandenigris/Pharo-Enhancements' ].
		spec package: #Ukulele with: [
				spec requires: #('SimplePersistence' 'PharoEnhancements'). ]. ].

]
