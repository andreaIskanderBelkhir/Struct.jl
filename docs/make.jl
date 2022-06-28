push!(LOAD_PATH,"../src/")

using Documenter

makedocs(
         sitename = "Struct.jl",
        
         pages=[
                "Home" => "index.md"
               ])deploydocs(;
    repo="github.com/andreaIskanderBelkhir/Struct.jl",
)