module ErrTests

 include("../src/AndersonMoore.jl")
using .AndersonMoore

function noErrors()::Bool

    hh = [0.  0.   0.  0. -1.1  0.  0.  0.  1.  1.  0.  0.;
          0. -0.4  0.  0.  0.   1. -1.  0.  0.  0.  0.  0.;
          0.  0.   0.  0.  0.   0.  1.  0.  0.  0.  0.  0.;
          0.  0.   0. -1.  0.   0.  0.  1.  0.  0.  0.  0.]::Array{Float64, 2}

    e = "AndersonMoore: unique solution."
    
<<<<<<< HEAD:test/defineErrTestFuncs.jl
    (bnow,rtsnow,ia,nexact,nnumeric,lgroots,code) = 
        AndersonMooreAlg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    err(code) == e
=======
    (bnow,rtsnow,ia,nexact,nnumeric,lgroots,AMAcode) = 
        AndersonMooreAlg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    err(AMAcode) == e
>>>>>>> develop:test/defineErrTestFuncs.jl
    
end # noErrors()

function tooManyRoots()::Bool

    hh = [0.  0.  0.  0. -1.1  0.  0.  0.  1.  1.  0.  0.;
          0.  4.  0.  0.  0.   1. -1.  0.  0.  0.  0.  0.;
          0.  0.  0.  0.  0.   0.  1.  0.  0.  0.  0.  0.;
          0.  0.  0. -1.  0.   0.  0.  1.  0.  0.  0.  0.]::Array{Float64, 2}

    e = "AndersonMoore: too many big roots."
    
<<<<<<< HEAD:test/defineErrTestFuncs.jl
    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, code) =   
        AndersonMooreAlg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    err(code) == e
=======
    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, AMAcode) =   
        AndersonMooreAlg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    err(AMAcode) == e
>>>>>>> develop:test/defineErrTestFuncs.jl

end # tooManyRoots()

function tooFewRoots()::Bool

    hh = [0.  0.   0.  0. -0.9  0.  0.  0.  1.  1.  0.  0.;
          0. -0.4  0.  0.  0.   1. -1.  0.  0.  0.  0.  0.;
          0.  0.   0.  0.  0.   0.  1.  0.  0.  0.  0.  0.;
          0.  0.   0. -1.  0.   0.  0.  1.  0.  0.  0.  0.]::Array{Float64, 2}

    e = "AndersonMoore: too few big roots."
    
<<<<<<< HEAD:test/defineErrTestFuncs.jl
    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, code) =   
        AndersonMooreAlg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    err(code) == e
=======
    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, AMAcode) =   
        AndersonMooreAlg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    err(AMAcode) == e
>>>>>>> develop:test/defineErrTestFuncs.jl
    
end # tooFewRoots()

function tooManyExactShifts()::Bool

    hh = [0.  0.   0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
          0. -0.4  0.  0.  0.  1. -1.  0.  0.  0.  0.  0.;
          0.  0.   0.  0.  0.  0.  1.  0.  0.  0.  0.  0.;
          0.  0.   0. -1.  0.  0.  0.  1.  0.  0.  0.  0.]::Array{Float64, 2}

    e = "AndersonMoore: too many exact shiftrights."

<<<<<<< HEAD:test/defineErrTestFuncs.jl
    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, code) =   
        AndersonMooreAlg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    err(code) == e
=======
    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, AMAcode) =   
        AndersonMooreAlg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    err(AMAcode) == e
>>>>>>> develop:test/defineErrTestFuncs.jl
    
end # tooManyExactShifts()    


function tooManyNumericShifts()::Bool

    hh = [0.  0.  0.  0.  -2.2  0.  0.  0.  2.  2.  0.  0.;
          0.  0.  0.  0.  -1.1  0.  0.  0.  1.  1.  0.  0.;
          0.  0.  0.  0.  -1.1  0.  1.  0.  1.  1.  0.  0.;
          0.  0.  0. -1.  -1.1  0.  0.  1.  1.  1.  0.  0.]::Array{Float64, 2}

    e = "AndersonMoore: too many numeric shiftrights."
    
<<<<<<< HEAD:test/defineErrTestFuncs.jl
    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, code) = 
        AndersonMooreAlg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    err(code) == e
=======
    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, AMAcode) = 
        AndersonMooreAlg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    err(AMAcode) == e
>>>>>>> develop:test/defineErrTestFuncs.jl
    
end # tooManyNumericShifts()

function spurious()::Bool

    e = "AndersonMoore: return code not properly specified"

    err(975) == e

end # spurious

end # module
