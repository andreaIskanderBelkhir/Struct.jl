using ViewerGL
using LinearAlgebraicRepresentation
L = LinearAlgebraicRepresentation
GL = ViewerGL

cylndr = L.rod(.06, .5, 2*pi)([8,1])
chairTop = Struct([ t(0,0,0.5), s(0.5,0.5,0.04), cube ])
chairLeg = Struct([ t(-.22,-.22,0), s(.5,.5,1), r(0,0,pi/8), cylndr ])
chairlegs = Struct( repeat([ chairLeg, r(0,0,pi/2) ],outer=4) );
chair = Struct([ chairTop, chairlegs ]);
chair = struct2lar(chair)
theChair = Struct([t(-.8,0,0), chair ])
fourChairs = Struct( repeat([r(0,0,pi/2), theChair],outer=4) );
fourSit = Struct([fourChairs,table]);
fourSit = struct2lar(fourSit)
GL.VIEW([ GL.GLPol(fourSit..., GL.Point4d(1,1,1,0.2)) ]);