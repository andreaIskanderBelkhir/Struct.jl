# struct.jl Documentation
###  Andrea Iskander Belkhir id : 511089
###  Beyza Özdemir id : 576145

struct is part of the julia library "LinearAlgebraicRepresentation.jl".this library perform geometric calculations on cellular complexes expressed through the Linear Algebraic Representation (LAR). Struct represent complex object and describe those object in they're coordinate system, in this way we can specify the edges. In the code Struct is used as a acyclic oriented graphs; an acyclic oriented graphs are a hierarchical structures formed by different component, and every component have they're different coordinate system.

```@docs
t(args::Array{Number,1}...)::Matrix
Return an affine transformation Matrix in homogeneous coordinates. Such `translation` Matrix has ``d+1`` rows and ``d+1`` columns, where ``d`` is the number of translation parameters in the `args` array.
```


```@docs
s(args::Array{Number,1}...)::Matrix
it generate (and return)a scaling matrix. the returned matrix have d+1 row and column where d is the lenght of the array passed as arg
```

```@docs
r(args...)
Return an affine transformation Matrix in homogeneous coordinates. Such `Rotation` Matrix has *dimension* either equal to 3 or to 4, for 2D and 3D rotation, respectively.
The `{Number,1}` of `args` either contain a single `angle` parameter in radiants, or a vector with three elements, whose `norm` is the rotation angle in 3D and whose `normalized value` gives the direction of the rotation axis in 3D.
```


```@docs
removeDups(CW::Cells)::Cells
Remove dublicate `cells` from `Cells` object. Then put `Cells` in *canonical form*, i.e. with *sorted indices* of vertices in each (unique) `Cells` Array element.
```

```@docs
Struct
A container of geometrical objects is defined by applying the function `Struct` to
the array of contained objects. Each value is defined in local coordinates and may be transformed by affine transformation tensors.
The value returned from the application of `Struct` to an `Array{Any, 1}` of `LAR` values, `matrices`, and `Struct` values is a value of
`Struct type`.  The coordinate system of this value is the one associated with the first object of the `Struct` arguments.  Also,
the resulting geometrical value is often associated with a variable name.
The generation of containers may continue hierarchically by suitably applying `Struct`. Notice that each LAR object in a `Struct` container is transformed by each matrix before it within the container, going from right to left. The action of a transformation (tensor) extends to each object on its right within its own container. Whereas,  the action of a tensor does not extend outside its container, according to the semantics of PHIGS structures.
```

```@docs
clone(self::struct,i::int)::Struct
return a clone of the struct as object called newobj,the int in the arg is used to modify the name of the copy if needed
```

```@docs
struct2lar(structure::Struct)::Union{LAR,LARmodel}
it turn the stuct into is linear algebraic representation as a tuple(vertices,faces(cells),edges). it basicaly flat the struct into a unique data struct of lar type by doing a search on the "tree" defined by the struct.
```

```@docs
embedTraversal(cloned::Struct,obj::Struct,n::Int,suffix::String)
return the cloned obj of struct type who consist in a struct with the same body as the struct obj passed as arg.every element of the body is visited and copied in the struct cloned using local variable to support, the element in the body can have diffent type : tuple,array or other struct
```

```@docs
embedStruct(n::Int)(self::Struct,suffix::String="New")
its used to cast embededstruct0 as currying funcion(typical in funcional programming EmbededStruct(int)(Struct,String="new"))
```

```@docs

EmbededStruct0(self::STruct,suffix::string="new")
it creates a copy of the self arg and it change the dimension with a factor of "n" and also append the suffix "new" on the name.and at the end return this copy
```

```@docs
box(model)
return [min,max], those parameter define the containment zone of the struct, if the parameter min return as 0 this mean we used the origin of the coordinate system
```

```@docs
apply(affineMatrix::Array{Float64,2}, larmodel::Union{LAR,LARmodel})
modify the larmodel in input and it return as a tuple(geometry,topology),where geometry as point and topology as cells's array the affinate matrix in input is used with the parameter W to modify the vertices.
```

```@docs
checkStruct(lst)
return the lenght(dimension) of lst
```

```@docs
traversal(CTM,stack,obj,scene=[])
trasform the gerarchic in a unique coordinate system(world coordinate), the body of the obj is deepth-first searched and during the visit is used and updated the ctm matrix (by moltiplication the vertices(self multiplication)) during the visit we use the stack by pushing and poping the current ctm
```

```@docs
evalStruct(self)
evaluete the struct in input,iniziate the ctm matrix with the dimension of (dimension of the struct)+1 x (dimension of the struct)+1 and return the struct turned into world coordinate using the traversal funcion

```

