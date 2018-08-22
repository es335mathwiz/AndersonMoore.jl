module GensysTests

include(joinpath(dirname(@__FILE__), "..", "src", "AndersonMoore.jl"))
using .AndersonMoore, MAT

function example0()::Bool

    #inputs
    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example0.mat"))
    g0  = read(file, "g0")
    g1  = read(file, "g1")
    cc  = read(file, "cc")
    psi = read(file, "psi")
    pi  = read(file, "pi")
    div = read(file, "div")
    close(file)

    #outputs
    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example0-result.mat"))
    G1MAT     = read(file, "G1")
    CCMAT     = read(file, "CC")
    impactMAT = read(file, "impact")
    fmatMAT   = read(file, "fmat")
    fwtMAT    = read(file, "fwt")
    ywtMAT    = read(file, "ywt")
    gevMAT    = read(file, "gev")
    euMAT     = read(file, "eu")
    close(file)

G1, CC, impact, fmat, fwt, ywt, gev, eu =
        gensysToAMA(g0, g1, cc, psi, pi, div, "ama")


    
    isapprox(G1, G1MAT)&&
    isapprox(CC, CCMAT)&&
    isapprox(impact, impactMAT)&&
    isapprox(fmat, fmatMAT)&&
    isapprox(fwt, fwtMAT)&&
    isapprox(ywt, ywtMAT)&&
    gev == nothing 
    isapprox(eu, euMAT)

end # example1

function example1()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example1.mat"))
    #inputs
    g0 = read(file, "g0")
    g1 = read(file, "g1")
    cc = read(file, "cc")
    psi = read(file, "psi")
    pi = read(file, "pi")
    div = read(file, "div")
                   
    close(file)

    #outputs
    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example1-result.mat"))
    G1MAT     = read(file, "G1")
    CCMAT     = read(file, "CC")
    impactMAT = read(file, "impact")
    fmatMAT   = read(file, "fmat")
    fwtMAT    = read(file, "fwt")
    ywtMAT    = read(file, "ywt")
    gevMAT    = read(file, "gev")
    euMAT     = read(file, "eu")
    close(file)


G1, CC, impact, fmat, fwt, ywt, gev, eu =
        gensysToAMA(g0, g1, cc, psi, pi, div, "ama")

    isapprox(G1, G1MAT)&&
    isapprox(CC, CCMAT)&&
    isapprox(impact, impactMAT)&&
    isapprox(fmat, fmatMAT)&&
    isapprox(fwt, fwtMAT)&&
    isapprox(ywt, ywtMAT)&&
    gev == nothing &&
    isapprox(eu, euMAT)

end # example1

function example2()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example2.mat"))
    #inputs
    g0 = read(file, "g0")
    g1 = read(file, "g1")
    cc = read(file, "cc")
    psi = read(file, "psi")
    pi = read(file, "pi")
    div = read(file, "div")
                   
    close(file)

    #outputs
    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example2-result.mat"))
    G1MAT     = read(file, "G1")
    CCMAT     = read(file, "CC")
    impactMAT = read(file, "impact")
    fmatMAT   = read(file, "fmat")
    fwtMAT    = read(file, "fwt")
    ywtMAT    = read(file, "ywt")
    gevMAT    = read(file, "gev")
    euMAT     = read(file, "eu")
    close(file)


G1, CC, impact, fmat, fwt, ywt, gev, eu =
        gensysToAMA(g0, g1, cc, psi, pi, div, "ama")
        
    
    isapprox(G1, G1MAT)&&
    isapprox(CC, CCMAT)&&
    isapprox(impact, impactMAT)&&
    isapprox(fmat, fmatMAT)&&
    isapprox(fwt, fwtMAT)&&
    isapprox(ywt, ywtMAT)&&
    gev == nothing &&
    isapprox(eu, euMAT)

end # example2

function example3()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example3.mat"))
    #inputs
    g0 = read(file, "g0")
    g1 = read(file, "g1")
    cc = read(file, "cc")
    psi = read(file, "psi")
    pi = read(file, "pi")
    div = read(file, "div")
                   
    close(file)

    #outputs
    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example3-result.mat"))
    G1MAT     = read(file, "G1")
    CCMAT     = read(file, "CC")
    impactMAT = read(file, "impact")
    fmatMAT   = read(file, "fmat")
    fwtMAT    = read(file, "fwt")
    ywtMAT    = read(file, "ywt")
    gevMAT    = read(file, "gev")
    euMAT     = read(file, "eu")
    close(file)


G1, CC, impact, fmat, fwt, ywt, gev, eu =
        gensysToAMA(g0, g1, cc, psi, pi, div, "ama")
        
    
    isapprox(G1, G1MAT)&&
    isapprox(CC, CCMAT)&&
    isapprox(impact, impactMAT)&&
    isapprox(fmat, fmatMAT)&&
    isapprox(fwt, fwtMAT)&&
    isapprox(ywt, ywtMAT)&&
    gev == nothing &&
    isapprox(eu, euMAT)

end # example3

function example4()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example4.mat"))
    #inputs
    g0 = read(file, "g0")
    g1 = read(file, "g1")
    cc = read(file, "cc")
    psi = read(file, "psi")
    pi = read(file, "pi")
    div = read(file, "div")
                   
    close(file)

    #outputs
    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example4-result.mat"))
    G1MAT     = read(file, "G1")
    CCMAT     = read(file, "CC")
    impactMAT = read(file, "impact")
    fmatMAT   = read(file, "fmat")
    fwtMAT    = read(file, "fwt")
    ywtMAT    = read(file, "ywt")
    gevMAT    = read(file, "gev")
    euMAT     = read(file, "eu")
    close(file)


G1, CC, impact, fmat, fwt, ywt, gev, eu =
        gensysToAMA(g0, g1, cc, psi, pi, div, "ama")
        
    
    isapprox(G1, G1MAT)&&
    isapprox(CC, CCMAT)&&
    isapprox(impact, impactMAT)&&
    isapprox(fmat, fmatMAT)&&
    isapprox(fwt, fwtMAT)&&
    isapprox(ywt, ywtMAT)&&
    gev == nothing &&
    isapprox(eu, euMAT)

end # example4

function example5()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example5.mat"))
    #inputs
    g0 = read(file, "g0")
    g1 = read(file, "g1")
    cc = read(file, "cc")
    psi = read(file, "psi")
    pi = read(file, "pi")
    div = read(file, "div")
                   
    close(file)

    #outputs
    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example5-result.mat"))
    G1MAT     = read(file, "G1")
    CCMAT     = read(file, "CC")
    impactMAT = read(file, "impact")
    fmatMAT   = read(file, "fmat")
    fwtMAT    = read(file, "fwt")
    ywtMAT    = read(file, "ywt")
    gevMAT    = read(file, "gev")
    euMAT     = read(file, "eu")
    close(file)


G1, CC, impact, fmat, fwt, ywt, gev, eu =
        gensysToAMA(g0, g1, cc, psi, pi, div, "ama")
        
    
    isapprox(G1, G1MAT)&&
    isapprox(CC, CCMAT)&&
    isapprox(impact, impactMAT)&&
    isapprox(fmat, fmatMAT)&&
    isapprox(fwt, fwtMAT)&&
    isapprox(ywt, ywtMAT)&&
    gev == nothing &&
    isapprox(eu, euMAT)

end # example5

function example6()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example6.mat"))
    #inputs
    g0 = read(file, "g0")
    g1 = read(file, "g1")
    cc = read(file, "cc")
    psi = read(file, "psi")
    pi = read(file, "pi")
    div = read(file, "div")
                   
    close(file)

    #outputs
    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example6-result.mat"))
    G1MAT     = read(file, "G1")
    CCMAT     = read(file, "CC")
    impactMAT = read(file, "impact")
    fmatMAT   = read(file, "fmat")
    fwtMAT    = read(file, "fwt")
    ywtMAT    = read(file, "ywt")
    gevMAT    = read(file, "gev")
    euMAT     = read(file, "eu")
    close(file)


G1, CC, impact, fmat, fwt, ywt, gev, eu =
        gensysToAMA(g0, g1, cc, psi, pi, div, "ama")
        
    
    isapprox(G1, G1MAT)&&
    isapprox(CC, CCMAT)&&
    isapprox(impact, impactMAT)&&
    isapprox(fmat, fmatMAT)&&
    isapprox(fwt, fwtMAT)&&
    isapprox(ywt, ywtMAT)&&
    gev == nothing &&
    isapprox(eu, euMAT)

end # example6

function example7()::Bool

    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example7.mat"))
    #inputs
    g0 = read(file, "g0")
    g1 = read(file, "g1")
    cc = read(file, "cc")
    psi = read(file, "psi")
    pi = read(file, "pi")
    div = read(file, "div")
                   
    close(file)

    #outputs
    file = matopen(joinpath(dirname(@__FILE__), "matDir", "gensysToAMA", "example7-result.mat"))
    G1MAT     = read(file, "G1")
    CCMAT     = read(file, "CC")
    impactMAT = read(file, "impact")
    fmatMAT   = read(file, "fmat")
    fwtMAT    = read(file, "fwt")
    ywtMAT    = read(file, "ywt")
    gevMAT    = read(file, "gev")
    euMAT     = read(file, "eu")
    close(file)


G1, CC, impact, fmat, fwt, ywt, gev, eu =
        gensysToAMA(g0, g1, cc, psi, pi, div, "ama")
        
    
    isapprox(G1, G1MAT)&&
    isapprox(CC, CCMAT)&&
    isapprox(impact, impactMAT)&&
    isapprox(fmat, fmatMAT)&&
    isapprox(fwt, fwtMAT)&&
    isapprox(ywt, ywtMAT)&&
    gev == nothing &&
    isapprox(eu, euMAT)

end # example7
    
end # module
