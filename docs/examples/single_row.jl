using ViewerGL
using LinearAlgebraicRepresentation
L = LinearAlgebraicRepresentation
GL = ViewerGL

singleRow=L.Struct(repeat([fourSit,L.t(0,2.5,0)],outer=10));
singleRow = L.struct2lar(singleRow)
GL.VIEW([ GL.GLPol(singleRow..., GL.Point4d(1,1,1,0.2)) ]);