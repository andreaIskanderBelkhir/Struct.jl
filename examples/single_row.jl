using ViewerGL
using LinearAlgebraicRepresentation
Lar = LinearAlgebraicRepresentation
GL = ViewerGL

singleRow=Lar.Struct(repeat([fourSit,t(0,2.5,0)],outer=10));
singleRow = Lar.struct2lar(singleRow)
GL.VIEW([ GL.GLPol(singleRow..., GL.Point4d(1,1,1,0.2)) ]);