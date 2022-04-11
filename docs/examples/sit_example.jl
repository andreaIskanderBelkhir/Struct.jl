using ViewerGL
using LinearAlgebraicRepresentation
L = LinearAlgebraicRepresentation
GL = ViewerGL

cylndr = L.rod(.06, .5, 2*pi)([8,1])
chairTop = L.Struct([ L.t(0,0,0.5), L.s(0.5,0.5,0.04), cube ])
chairLeg = L.Struct([ L.t(-.22,-.22,0), L.s(.5,.5,1), L.r(0,0,pi/8), cylndr ])
chairlegs = L.Struct( repeat([ chairLeg, L.r(0,0,pi/2) ],outer=4) );
chair = L.Struct([ chairTop, chairlegs ]);
chair = L.struct2lar(chair)
theChair = Struct([t(-.8,0,0), chair ])
fourChairs = Struct( repeat([L.r(0,0,pi/2), theChair],outer=4) );
fourSit = Struct([fourChairs,table]);
fourSit = struct2lar(fourSit)
GL.VIEW([ GL.GLPol(fourSit..., GL.Point4d(1,1,1,0.2)) ]);