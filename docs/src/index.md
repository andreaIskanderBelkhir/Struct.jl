# struct.jl Documentation
```@docs
t(args::Array{Number,1}...)::Matrix
Return an *affine transformation Matrix* in homogeneous coordinates. Such `translation` Matrix has ``d+1`` rows and ``d+1`` columns, where ``d`` is the number of translation parameters in the `args` array.
```
t ex

```@docs
s(args...)
```