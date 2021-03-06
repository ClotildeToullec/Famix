Class {
	#name : #FAMIXEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-Compatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #meta }
FAMIXEntity class >> metamodel [

	<generated>
	^ FAMIXModel metamodel
]

{ #category : #testing }
FAMIXEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isBehavioural [

	<generated>
	^ false
]

{ #category : #'testing - custom' }
FAMIXEntity >> isBehaviouralEntity [
	^ false
]

{ #category : #testing }
FAMIXEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isImplicitVariable [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isPrimitiveType [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isType [

	<generated>
	^ false
]
