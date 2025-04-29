"
A sample comment for the earth map country class
"
Class {
	#name : 'EarthMapCountry',
	#superclass : 'Object',
	#instVars : [
		'svgPath',
		'name',
		'code'
	],
	#category : 'SummerSchool',
	#package : 'SummerSchool'
}

{ #category : 'converting' }
EarthMapCountry >> asRSShape [
	 ^ RSSVGPath new svgPath: svgPath 
]

{ #category : 'accessing' }
EarthMapCountry >> code [

	^ code
]

{ #category : 'accessing' }
EarthMapCountry >> code: anObject [

	code := anObject
]

{ #category : 'instance creation' }
EarthMapCountry >> fromXML: aXMLElement [
svgPath := aXMLElement attributeAt: 'd'.
name := aXMLElement  attributeAt: 'title'.
code := aXMLElement  attributeAt: 'id'.
]

{ #category : 'converting' }
EarthMapCountry >> inspectorShape [

	<inspectorPresentationOrder: 0 title: 'shape'>
	| canvas |
	canvas := RSCanvas new.
	canvas add: self asRSShape.
	canvas @ RSCanvasController .
	^ SpRoassalInspectorPresenter new canvas: canvas;
		  yourself
]

{ #category : 'accessing' }
EarthMapCountry >> name [

	^ name
]

{ #category : 'accessing' }
EarthMapCountry >> name: anObject [

	name := anObject
]

{ #category : 'converting' }
EarthMapCountry >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: '';
		nextPutAll: name
]

{ #category : 'accessing' }
EarthMapCountry >> svgPath [

	^ svgPath
]

{ #category : 'accessing' }
EarthMapCountry >> svgPath: anObject [

	svgPath := anObject
]
