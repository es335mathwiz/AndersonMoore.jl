module GensysTests

include(joinpath(dirname(@__FILE__), "..", "src", "AMA.jl"))
using .AMA, MAT

function test1()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir",
                            "tmp", "gensysToAMA", "matlab", "exampl0.mat"))
    #inputs
    g0 = read(file, "g0")
    g1 = read(file, "g1")
    cc = read(file, "cc")
    psi = read(file, "psi")
    pi = read(file, "pi")
    div = read(file, "div")
                   
    close(file)

G1, CC, impact, fmat, fwt, ywt, gev, eu =
        gensysToAMA(g0, g1, cc, psi, pi, div, "ama")
        
    return true

end # function
    
end # module
