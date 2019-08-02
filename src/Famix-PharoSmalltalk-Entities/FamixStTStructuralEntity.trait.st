Trait {
	#name : #FamixStTStructuralEntity,
	#traits : 'FamixTStructuralEntity',
	#classTraits : 'FamixTStructuralEntity classTrait',
	#category : #'Famix-PharoSmalltalk-Entities-Traits'
}

{ #category : #meta }
FamixStTStructuralEntity classSide >> annotation [

	<MSEClass: #TStructuralEntity super: #Trait>
	<package: #'Famix-PharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixStTStructuralEntity >> isSharedVariable [
	^ false
]