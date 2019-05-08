import Pkg; Pkg.add(Pkg.PackageSpec(url="https://github.com/JuliaComputing/JuliaAcademyData.jl"))
using JuliaAcademyData; activate("World of machine learning")

# # Character based RNN language model
# Based on http://karpathy.github.io/2015/05/21/rnn-effectiveness

#-

# ## Setup
# 1-Adds required packages to Julia.   
# 2-Loads the data and a pretrained model.

cd(datapath("charlm"))
include("charlm.jl")

# ## Sample Data-1
# A random subset of the Shakespeare training data

LEN = 500
r = rand(1:length(shake_text)-LEN)
println(shake_text[r:r+LEN])
flush(stdout)

# ## Sample Generation-1
# Random Shakespeare style text generated by the model

generate(shake_model, shake_chars, LEN)

# ## Sample Data-2
# A random subset of the code in Julia base

r = rand(1:length(julia_text)-LEN)
println(julia_text[r:r+LEN])
flush(stdout)

# ## Sample Generation-2
# Random Julia code generated by the model

generate(julia_model, julia_chars, LEN)

#-



