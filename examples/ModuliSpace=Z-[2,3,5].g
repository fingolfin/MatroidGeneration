LoadPackage( "MatroidGeneration" );
db := AttachMatroidsDatabase();
d := db.matroids_split.document("71ffc9ffa4e429bca0eab178ff4340834b931892");
LoadPackage( "alcove", ">= 2019-03-09" );
matroid := MatroidByCoatomsNC( d.n, 3, d.adjList );
#homalgIOMode( "f" );
ZZ := HomalgRingOfIntegersInSingular( );
M := ModuliSpaceOfMatroidByEquationsAndInequations( matroid, ZZ );
LoadPackage( "ZariskiFrames", ">= 2019.04.16" );
m := DistinguishedQuasiAffineSet( M );