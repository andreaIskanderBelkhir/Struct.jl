using ViewerGL
using LinearAlgebraicRepresentation
Lar = LinearAlgebraicRepresentation
GL = ViewerGL

cube = Lar.apply( Lar.t(-0.5,-0.5,0), Lar.cuboid([1,1,1]))

tableTop = Lar.Struct([ Lar.t(0,0,.85),Lar.s(1,1,0.05), cube ])
tableLeg = Lar.Struct([ Lar.t(-.475,-.475,0), Lar.s(.1,.1,.89), cube ])
tablelegs = Lar.Struct( repeat([ tableLeg, Lar.r(0,0,pi/2) ],outer=4) )
table = Lar.Struct([ tableTop, tablelegs ])
table = Lar.struct2lar(table)
GL.VIEW([ GL.GLPol(table..., GL.Point4d(0,1,0,0.1)) ]);