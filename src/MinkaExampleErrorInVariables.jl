module MinkaExampleErrorInVariables

    using GLMakie, CairoMakie 
    using LinearAlgebra, Statistics, Random

    include("generatedata.jl")
    include("plotdata.jl")

    export generatedata, plotdata, plotdata_and_pca, plotdata_and_pca_and_regression

end
