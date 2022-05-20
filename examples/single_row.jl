using ViewerGL
using LinearAlgebraicRepresentation
L = LinearAlgebraicRepresentation
GL = ViewerGL

singleRow=Struct(repeat([fourSit,t(0,2.5,0)],outer=10));
singleRow = struct2lar(singleRow)
GL.VIEW([ GL.GLPol(singleRow..., GL.Point4d(1,1,1,0.2)) ]);