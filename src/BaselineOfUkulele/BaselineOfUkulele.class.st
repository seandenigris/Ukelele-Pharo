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

	"Pillar doesn't seem to be loadable in P9 yet"
	spec for: #'pharo8.x' do: [
		spec baseline: 'Pillar' with: [
				spec repository: 'github://pillar-markup/pillar:dev-8' ].
		spec package: #Ukulele with: [
				spec requires: #('Pillar'). ] ]

]
