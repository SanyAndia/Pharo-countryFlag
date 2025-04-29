"
A simple comment for earth map class
"
Class {
	#name : 'EarthMap',
	#superclass : 'Object',
	#instVars : [
		'countries'
	],
	#category : 'SummerSchool',
	#package : 'SummerSchool'
}

{ #category : 'accessing' }
EarthMap >> countries [

	^ countries
]

{ #category : 'accessing' }
EarthMap >> countries: anObject [

	countries := anObject
]

{ #category : 'accessing' }
EarthMap >> importCountryFromXMLNode: aXMLElement [
countries  add: (EarthMapCountry new fromXML: aXMLElement )
]

{ #category : 'initialization' }
EarthMap >> initialize [ 
super initialize .
countries := OrderedCollection new 
]

{ #category : 'accessing' }
EarthMap >> openPopulatedCanvas [
self populatedCanvas open
]

{ #category : 'accessing' }
EarthMap >> populatedCanvas [
^RSCanvas new
addAll: (countries collect: [ :country | country asRSShape ] );
@ RSCanvasController ;
yourself 
]

{ #category : 'accessing' }
EarthMap >> xmlTreeFromFile: aFileName [

	^ aFileName asFileReference readStreamDo: [ :stream |
		  (XMLDOMParser parse: stream) document ]
]
