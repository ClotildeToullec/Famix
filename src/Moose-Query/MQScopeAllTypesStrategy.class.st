"
Description
--------------------

I am a strategy used by the scoping queries to define that the query should match all kinds of entity.

I am moslty here for performance reasons.
"
Class {
	#name : #MQScopeAllTypesStrategy,
	#superclass : #MQScopeAbstractTypeStrategy,
	#category : #'Moose-Query-Scoping'
}

{ #category : #testing }
MQScopeAllTypesStrategy >> isOfRightType: anEntity [
	^ true
]
