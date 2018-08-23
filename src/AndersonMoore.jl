__precompile__()

module AndersonMoore
# http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/

using Compat.LinearAlgebra: cond, diag, diagm, eig, eigvals, eigvecs, I, norm, nullspace, qr, rank
using Compat.Libdl: dlopen, dlsym
using Compat.SparseArrays: SparseMatrixCSC

# Set-up for callSparseAim
#const lib = dlopen(normpath(joinpath(dirname(@__FILE__), "..", "deps", "libAndersonMoore")))
#const sym = dlsym(lib, :callSparseAim)

# Include all files    
for (root, dirs, files) in walkdir(joinpath(dirname(@__FILE__)))
    for file in files
        file == "AndersonMoore.jl" ? nothing : include(joinpath(root, file))
    end
end

# Export all functions
export exactShift!, numericShift!, shiftRight!, buildA!, augmentQ!, eigenSys!, reducedForm,
AndersonMooreAlg, sameSpan, deleteCols, deleteRows, callSparseAim, checkAM, err, gensysToAMA

end # module
