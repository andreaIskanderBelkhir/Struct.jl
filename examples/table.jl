using ViewerGL
using LinearAlgebraicRepresentation
L = LinearAlgebraicRepresentation
GL = ViewerGL

cube = apply( t(-.5,-.5,0), L.cuboid([1,1,1]))
tableTop = Struct([ t(0,0,.85), L.s(1,1,.05), cube ])
tableLeg = Struct([ t(-.475,-.475,0), L.s(.1,.1,.89), cube ])
tablelegs = Struct( repeat([ tableLeg, L.r(0,0,pi/2) ],outer=4) )
table = Struct([ tableTop, tablelegs ])
table = struct2lar(table)
GL.VIEW([ GL.GLPol(table..., GL.Point4d(0,1,0,0.1)) ]);