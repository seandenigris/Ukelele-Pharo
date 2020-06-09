"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestUkelele,
	#superclass : #PackageManifest,
	#category : #'Ukulele-Manifest'
}

{ #category : #'code-critics' }
ManifestUkelele class >> ruleRefersToClassRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#'UkSong class' #exampleAddSong #true)) #'2020-06-09T13:17:42.787333-04:00') #(#(#RGMethodDefinition #(#'UkLesson class' #exampleAddLesson #true)) #'2020-06-09T13:19:13.019522-04:00') )
]
