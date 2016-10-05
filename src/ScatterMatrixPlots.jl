__precompile__()
module ScatterMatrixPlots

# package code goes here
using Gadfly, Compose, DataFrames

import Compose: draw, hstack, vstack, gridstack, isinstalled, parse_colorant, parse_colorant_vec

export ScatterMatrixPlot,ScatterMatrix,open_imagefile,ScatterMatrixPlot2,ScatterMatrix2

# Re-export some essentials from Compose
export SVGJS, SVG, PGF, PNG, PS, PDF, draw, inch, mm, cm, px, pt, color, @colorant_str, vstack, hstack

include("open_imagefile.jl")
include("ScatterMatrix.jl")
include("ScatterMatrixPlot.jl")
include("ScatterMatrix2.jl")
include("ScatterMatrixPlot2.jl")

end # module
