__precompile__()

module AndersonMoore
# http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/

# Set-up for callSparseAim
const lib = Libdl.dlopen(normpath(joinpath(dirname(@__FILE__), "..", "deps", "libAndersonMoore")))
const sym = Libdl.dlsym(lib, :callSparseAim)

# Include all files    
for (_, _, files) in walkdir(joinpath(dirname(@__FILE__), "AndersonMoore"))
    for file in files
        include(joinpath("AndersonMoore", file))
    end
end

# Export all functions
export exactShift!, numericShift!, shiftRight!, buildA!, augmentQ!, eigenSys!, reducedForm,
AndersonMooreAlg, sameSpan, deleteCols, deleteRows, callSparseAim, checkAM, err

end # module
