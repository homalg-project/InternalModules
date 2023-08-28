#! @Chunk RepS4InternalSymmetricAlgebraModules

LoadPackage( "InternalModules" );

#! @Example

G := SymmetricGroup( 4 );;
RepG := RepresentationCategory( G );;

irr := Irr( G );;
one := RepresentationCategoryObject( irr[5], RepG, "1" );;
sigma := RepresentationCategoryObject( irr[1], RepG, "sigma" );;
rho := RepresentationCategoryObject( irr[3], RepG, "rho" );;
nu := RepresentationCategoryObject( irr[4], RepG, "nu" );;
chi := RepresentationCategoryObject( irr[2], RepG, "chi" );;

v := chi;;
ZRepG := PositivelyZGradedClosureCategory( RepG );
#! The positively graded category of The representation category of
#! SymmetricGroup( [ 1 .. 4 ] )
V := ObjectInPositivelyZGradedClosureCategory( v, 1 );;
SVMod := CategoryOfLeftSModules( v );
#! Abelian category of left modules over the internal symmetric algebra of
#! 1*(chi)
#! with undecidable (mathematical) equality of morphisms and
#! uncomputable lifts and colifts
ModSV := CategoryOfRightSModules( v );;
SV := UnderlyingActingObject( SVMod );
#! <An object in The positively graded category of
#!  The representation category of SymmetricGroup( [ 1 .. 4 ] )>
S := SymmetricAlgebraAsLeftModule( v );
#! <An object in Abelian category of
#!  left modules over the internal symmetric algebra of 1*(chi)
#!  with undecidable (mathematical) equality of morphisms and
#!  uncomputable lifts and colifts>

u := chi;;
U := ObjectInPositivelyZGradedClosureCategory( u, 3 );;
F := FreeInternalModule( U, SVMod );
#! <An object in Abelian category of
#!  left modules over the internal symmetric algebra of 1*(chi)
#!  with undecidable (mathematical) equality of morphisms and
#!  uncomputable lifts and colifts>
H := FreeInternalModule( U, ModSV );;

c1 := UniversalMorphismFromFreeModule( F, Support( F[6] )[4], 6, 1 );;
c2 := UniversalMorphismFromFreeModule( F, Support( F[6] )[4], 6, 2 );;
c := 2 * c1 - 3 * c2;;
Display( c[6] );
#! Component: (nu)
#! 
#! 2,-3,0,0
#! 
#! A morphism in Category of matrices over Q
#! 
#! ------------------------

a := InternalElement( SV, Support( SV[1] )[1], 1, 1 );;
b := InternalElement( SV, Support( SV[2] )[1], 2, 1 );;
c := InternalElement( SV, Support( SV[2] )[2], 2, 1 );;
d := InternalElement( SV, Support( SV[3] )[3], 3, 1 );;

cc := UniversalMorphismFromFreeModule( c );;
dd := UniversalMorphismFromFreeModule( d );;

pp := ProjectionInFactorOfFiberProduct( [ cc, dd ], 1 );;
qq := ProjectionInFactorOfFiberProduct( [ cc, dd ], 2 );;

ff := PreCompose( pp, cc ) - PreCompose( qq, dd );;
Set( List( Sublist( ff, [ 0 .. 5 ] ), IsZero ) );
#! [ true ]

ss := UniversalMorphismIntoDirectSum( [ pp, -qq ] );;
tt := UniversalMorphismFromDirectSum( [ cc, dd ] );;

homology := HomologyObject( ss, tt );;
Set( List( Sublist( homology, [ 0 .. 5 ] ), IsZero ) );
#! [ true ]

e1 := InternalElement( SV, sigma, 3, 1 );;
e2 := InternalElement( SV, chi, 3, 1 );;
e3 := InternalElement( SV, chi, 3, 2 );;
e4 := InternalElement( SV, nu, 3, 1 );;

e := e1 + 2 * e2 - 1/3 * e3 + e4;
#! degree: 3
#! 
#! Component: (sigma)
#! 
#! 1
#! 
#! A morphism in Category of matrices over Q
#! 
#! ------------------------
#! Component: (chi)
#! 
#! 2,-1/3
#! 
#! A morphism in Category of matrices over Q
#! 
#! ------------------------
#! Component: (nu)
#! 
#! 1
#! 
#! A morphism in Category of matrices over Q
#! 
#! ------------------------

e2 * e3 = BraidedMultiplication( e3, e2 );
#! true

m1 := InternalElement( F, nu, 6, 1 );;
m2 := InternalElement( F, nu, 6, 2 );;

m := 2 * m1 - 1/3 * m2;
#! degree: 6
#! 
#! Component: (nu)
#! 
#! 2,-1/3,0,0
#! 
#! A morphism in Category of matrices over Q
#! 
#! ------------------------
#! @EndExample
