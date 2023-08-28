
using CapAndHomalg

LoadPackage( "GroupRepresentationsForCAP" )

G = SymmetricGroup( 4 )

srepG = RepresentationCategory( G )

irr = Irr( G );

𝟙 = RepresentationCategoryObject( irr[5], srepG, "𝟙" )

σ = RepresentationCategoryObject( irr[1], srepG, "σ" )

ρ = RepresentationCategoryObject( irr[3], srepG, "ρ" )

ν = RepresentationCategoryObject( irr[4], srepG, "ν" )

χ = RepresentationCategoryObject( irr[2], srepG, "χ" )

TensorProduct( ρ, σ, ρ )

AssociatorRightToLeft( ρ, σ, ρ )

TensorProduct( ρ, ρ )

Braiding( ρ, ρ )

LoadPackage( "GradedCategories" )

ZsrepG = PositivelyZGradedClosureCategory( srepG )

LoadPackage( "InternalModules" )

W = χ

SWMod = CategoryOfLeftSModules( W )

SW = UnderlyingActingObject( SWMod )

SW[0]

SW[1]

SW[2]

SW[3]

SW[4]

χ¹ = InternalElement( SW, χ, 1, 1 )

ρ² = InternalElement( SW, ρ, 2, 1 )

ν² = InternalElement( SW, ν, 2, 1 )

ν³ = InternalElement( SW, ν, 3, 1 )

χ¹ * χ¹

χ¹ * (χ¹ * χ¹)

χ¹ * (χ¹ * χ¹) == (χ¹ * χ¹) * χ¹

χ¹ * ρ²

χ¹ * ρ² == ρ² * χ¹

χ¹ * ν²

χ¹ * ν² == ν² * χ¹

χ¹ * (χ¹ * (χ¹ * χ¹))

(χ¹ * χ¹) * (χ¹ * χ¹)

((χ¹ * χ¹) * χ¹) * χ¹

(χ¹ * χ¹) * ρ²

χ¹ * (χ¹ * ρ²)

(χ¹ * χ¹) * ν²

χ¹ * ν³

χ¹ * ν³ == ν³ * χ¹

χ¹ * (χ¹ * (χ¹ * χ¹)) ≠ ((χ¹ * χ¹) * χ¹) * χ¹


