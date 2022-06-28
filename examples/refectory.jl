using ViewerGL
using LinearAlgebraicRepresentation
Lar = LinearAlgebraicRepresentation
GL = ViewerGL


cylndr = L.rod(.06, .5, 2*pi)([8,1])
chairTop = Lar.Struct([ Lar.t(0,0,0.5), Lar.s(0.5,0.5,0.04), cube ])
chairLeg = Lar.Struct([ Lar.t(-.22,-.22,0), Lar.s(.5,.5,1), Lar.r(0,0,pi/8), cylndr ])
chairlegs = Lar.Struct( repeat([ chairLeg, r(0,0,pi/2) ],outer=4) );
chair = Lar.Struct([ chairTop, chairlegs ]);
chair = Lar.struct2lar(chair)
theChair = Lar.Struct([Lar.t(-.8,0,0), chair ])
fourChairs = Lar.Struct( repeat([Lar.r(0,0,pi/2), theChair],outer=4) );
fourSit = Lar.Struct([fourChairs,table]);
fourSit = Lar.struct2lar(fourSit)
singleRow=Lar.Struct(repeat([fourSit,t(0,2.5,0)],outer=10));
singleRow = Lar.struct2lar(singleRow)
GL.VIEW([ GL.GLPol(singleRow..., GL.Point4d(1,1,1,0.2)) ]);
refectory = Struct(repeat([singleRow,t(3,0,0)],outer=10));
refectory = struct2lar(refectory)
GL.VIEW([ GL.GLPol(refectory..., GL.Point4d(1,1,1,0.2)) ]);