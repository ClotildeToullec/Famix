Class {
	#name : #FAMIXBehaviouralEntity,
	#superclass : #FAMIXContainerEntity,
	#traits : 'FamixTHasSignature + FamixTInvocable + FamixTTypedEntity + FamixTWithDereferencedInvocations + FamixTWithImplicitVariables + FamixTWithLocalVariables + FamixTWithParameters + FamixTWithReferences + FamixTWithStatements',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocable classTrait + FamixTTypedEntity classTrait + FamixTWithDereferencedInvocations classTrait + FamixTWithImplicitVariables classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait + FamixTWithReferences classTrait + FamixTWithStatements classTrait',
	#category : #'Famix-Compatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXBehaviouralEntity class >> annotation [

	<FMClass: #BehaviouralEntity super: #FAMIXContainerEntity>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> clientBehaviours [
	<FMProperty: #clientBehaviours type: #FAMIXBehaviouralEntity> <multivalued> <derived>
	<FMComment: 'All behaviours that depend on the receiver'>
	^ self invokingBehaviours 
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> computeCyclomaticComplexity [
	^ self mooseModel isSmalltalk
		ifTrue: [ (RBVisitorForFAMIXMetrics for: self) cyclomaticNumber ]
		ifFalse: [ self notExistentMetricValue ]
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> cyclomaticComplexity: aNumber [
	self cacheAt: #cyclomaticComplexity put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> hasEmptyBody [
	"Copied from FAMIX2.
	 The closest we can get in FAMIX2 to determine if a body is empty is to check if the method
	 performs no invocations and/or accesses. The only thing left to do would be the declaration
	 of local variables (that are not accesses afterwards).

	Note that an abstract method with only 'self subclassResponsibility' is not regarded as an 
	empty method in this scheme (which is questionable)."
	"note that the presence of statements should be checked too for that..."
	^ self numberOfAccesses = 0 and: [ self numberOfOutgoingInvocations = 0 ]
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> invokedBehaviours [
	^ self queryAllOutgoingInvocations opposites
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> invokingBehaviours [
	^ self queryAllIncomingInvocations opposites
]

{ #category : #'Famix-Implementation' }
FAMIXBehaviouralEntity >> isBehaviouralEntity [
	^ true
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> numberOfAccesses [
	<FMProperty: #numberOfAccesses type: #Number>
	<derived>
	<FMComment: 'The number of accesses from a method'>
	
	^ self 
		lookUpPropertyNamed: #numberOfAccesses
		computedAs: [ self accesses size ]
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> numberOfComments [
	<FMProperty: #numberOfComments type: #Number>
	<FMComment: 'The number of comment fragments'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfComments computedAs: [ self comments size ]
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> numberOfConditionals [
	<FMProperty: #numberOfConditionals type: #Number>
	<derived>
	<FMComment: 'The number of conditionals in a method'>
	^ self
		lookUpPropertyNamed: #numberOfConditionals
		computedAs: [ self mooseModel isSmalltalk ifTrue: [ (RBVisitorForFAMIXMetrics for: self) numberOfConditionals ] ifFalse: [ self notExistentMetricValue ] ]
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> numberOfConditionals: aNumber [
	self cacheAt: #numberOfConditionals put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> numberOfMessageSends [
	<FMProperty: #numberOfMessageSends type: #Number>
	<derived>
	<FMComment: 'The number of message from a method'>
	^ self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [ self mooseModel isSmalltalk ifTrue: [ (RBVisitorForFAMIXMetrics for: self) numberOfMessageSends ] ifFalse: [ self notExistentMetricValue ] ]
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> numberOfOutgoingInvocations [
	<FMProperty: #numberOfOutgoingInvocations type: #Number>
	<derived>
	<FMComment: 'The number of invocations in a method'>
	
	^self
		lookUpPropertyNamed: #numberOfOutgoingInvocations
		computedAs: [self outgoingInvocations size]
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> numberOfStatements [
	<FMProperty: #numberOfStatements type: #Number>
	<derived>
	<FMComment: 'The number of statements in a method'>
	^ self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [ self mooseModel isSmalltalk ifTrue: [ (RBVisitorForFAMIXMetrics for: self) numberOfStatements ] ifFalse: [ self notExistentMetricValue ] ]
]

{ #category : #'Famix-Extensions' }
FAMIXBehaviouralEntity >> providerBehaviours [
	<FMProperty: #providerBehaviours type: #FAMIXBehaviouralEntity>
	<derived>
	<multivalued>
	<FMComment: 'All behaviours that the receiver depends on'>
	^ self invokedBehaviours
]
