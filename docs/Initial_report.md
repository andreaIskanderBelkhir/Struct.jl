# Initial Report : Struct
### Andrea Iskander Belkhir id : 511089
### Beyza Özdemir id : 576145

## Introduction
struct is part of the julia library "LAR.jl".this library perform geometric calculations on cellular complexes expressed through the Linear Algebraic Representation (LAR).
Struct represent complex object and describe those object in they're coordinate system, in this way we can specify the edges.
In the code Struct is used as a acyclic oriented graphs;
an acyclic oriented graphs are a hierarchical structures formed by different component, and every component have they're different coordinate system

## Main interface

A user wanting to use this library will use the 4 main interface :
* Lar.Struct
* Lar.apply
* Lar.struct2lar
* Lar.evalStruct

The funcion Struct will create a object of type struct using as input an array of object, this funcion is implemented with 4 methods.

The funcion apply use the larmodel in input with the affinateMatrix to return the larmodel as a tuple formed by points an array of cells.

The funcion struct2lar return the struct given by input as his lar representation.

The funcion evalStruct return the world coordinate of the struct in input

## Example
To help with the project we used 3 example taken from the **[LinearAlgebraicRepresentation.jl](https://github.com/cvdlab/LinearAlgebraicRepresentation.jl)** package. the examples were chosen to have different complexity . Its possible find the chosen example in the folder /docs/examples.

## Start
Before starting to improve the code, the work started with understanding the package struct as a whole, right after we started to study the singol funcion that compose struct.jl.
Before starting to modify the code to optimaze the code, we decide thats better to improve the readabilty of the code using new funcion when possible for example the funcion <r(args...)> can use 2 more funcion one for  2D rotation and another for the 3D.

```julia
function r(args...)
 n = length(args)
 if n == 1 # rotation in 2D
	mat=r2D(args)
 end

 if n == 3 # rotation in 3D
	mat=r3D(args)
 end
 return mat
end

```


 
