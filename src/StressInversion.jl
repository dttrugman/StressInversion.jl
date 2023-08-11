__precompile__()
module StressInversion

# external packages
using Printf, StatsBase, Dates, DataFrames
using LazyGrids: ndgrid_array
using DelimitedFiles: readdlm

# export from these packages
export ndgrid_array, readdlm

# export stress utilities
include("stress_utilities.jl")
export get_normal, get_slip, aux_plane, strike_dip
export assemble_stress_tensor, principal_stresses
export get_azi_plunge, normal_shear_tractions, angular_misfit, mean_angular_misfit
export compute_instability, round_sqrt, round_acosd
export mt2sdr, tdl, sdr2mt

# export stress inversion Functions
include("stress_inversion.jl")
export get_Gmat, get_dvec
export linear_stress_inversion, linear_stress_inversion_randomfaults
export iterative_stress_inversion, bootstrap_iterative_inversion

end # module StressInversion
