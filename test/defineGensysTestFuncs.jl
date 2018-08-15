module GensysTests

include(joinpath(dirname(@__FILE__), "..", "src", "AMA.jl"))
using .AMA, MAT

function example0()::Bool

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

end # example1

function example1()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir",
                            "tmp", "gensysToAMA", "matlab", "exampl1.mat"))
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

end # example1

function example2()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir",
                            "tmp", "gensysToAMA", "matlab", "exampl2.mat"))
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

end # example2

function example3()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir",
                            "tmp", "gensysToAMA", "matlab", "exampl3.mat"))
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

end # example3

function example4()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir",
                            "tmp", "gensysToAMA", "matlab", "exampl4.mat"))
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

end # example4

function example5()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir",
                            "tmp", "gensysToAMA", "matlab", "exampl5.mat"))
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

end # example5

function example6()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir",
                            "tmp", "gensysToAMA", "matlab", "exampl6.mat"))
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

end # example6

function example7()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir",
                            "tmp", "gensysToAMA", "matlab", "exampl7.mat"))
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

end # example7
    
end # module
