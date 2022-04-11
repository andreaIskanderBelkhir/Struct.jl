using ViewerGL
using LinearAlgebraicRepresentation
L = LinearAlgebraicRepresentation
GL = ViewerGL

cube = L.apply( L.t(-.5,-.5,0), L.cuboid([1,1,1]))
tableTop = L.Struct([ L.t(0,0,.85), L.s(1,1,.05), cube ])
tableLeg = L.Struct([ L.t(-.475,-.475,0), L.s(.1,.1,.89), cube ])
tablelegs = L.Struct( repeat([ tableLeg, L.r(0,0,pi/2) ],outer=4) )
table = L.Struct([ tableTop, tablelegs ])
table = L.struct2lar(table)
GL.VIEW([ GL.GLPol(table..., GL.Point4d(0,1,0,0.1)) ]);