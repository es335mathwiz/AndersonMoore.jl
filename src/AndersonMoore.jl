__precompile__()

module AndersonMoore
# http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/

# Set-up for callSparseAim
const lib = Libdl.dlopen(normpath(joinpath(dirname(@__FILE__), "..", "deps", "libAndersonMoore")))
const sym = Libdl.dlsym(lib, :callSparseAim)

# Include all files    
<<<<<<< HEAD:src/AndersonMoore.jl
for (_, _, files) in walkdir(joinpath(dirname(@__FILE__), "AndersonMoore"))
    for file in files
        include(joinpath("AndersonMoore", file))
=======
for (root, dirs, files) in walkdir(joinpath(dirname(@__FILE__)))
    for file in files
        file == "AndersonMoore.jl" ? nothing : include(joinpath(root, file))
>>>>>>> develop:src/AndersonMoore.jl
    end
end

# Export all functions
export exactShift!, numericShift!, shiftRight!, buildA!, augmentQ!, eigenSys!, reducedForm,
<<<<<<< HEAD:src/AndersonMoore.jl
AndersonMooreAlg, sameSpan, deleteCols, deleteRows, callSparseAim, checkAM, err
=======
AndersonMooreAlg, sameSpan, deleteCols, deleteRows, callSparseAim, checkAM, err, gensysToAMA
>>>>>>> develop:src/AndersonMoore.jl

end # module
