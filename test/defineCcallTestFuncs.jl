module CcallTests

 include("../src/AMA.jl")
# test ccall
using .AMA, MAT

# Original Tests
function firmvalueFalse()::Bool

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function firmvalue3Leads2LagsFalse()::Bool

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags=2
    nleads=3
    
    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function example7False()
  
    file = matopen("./matDir/"*"amaAlgTestMatsexample7False.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsexample7False.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsexample7False.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function oneEquationNoLeadFalse()
    
    file = matopen("./matDir/"*"amaAlgTestMatsoneEquationNoLeadFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsoneEquationNoLeadFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsoneEquationNoLeadFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function reliablePaperExmplFalse()
    
    file = matopen("./matDir/"*"amaAlgTestMatsreliablePaperExmplFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsreliablePaperExmplFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsreliablePaperExmplFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)

end

function athanFalse()

    file = matopen("./matDir/"*"amaAlgTestMatsathanFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsathanFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsathanFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function habitmodFalse()

    file = matopen("./matDir/"*"amaAlgTestMatshabitmodFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatshabitmodFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatshabitmodFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 4
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)

end

# Tweaked Tests
function firmvalueTrue()::Bool

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalueTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalueTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalueTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end


function firmvalue3Leads2LagsTrue()::Bool

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags=2
    nleads=3

    display(hh)
    display(rts)
    display(bb)
    
    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function example7True()
  
    file = matopen("./matDir/"*"amaAlgTestMatsexample7True.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsexample7True.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsexample7True.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function oneEquationNoLeadTrue()
    
    file = matopen("./matDir/"*"amaAlgTestMatsoneEquationNoLeadTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsoneEquationNoLeadTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsoneEquationNoLeadTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function reliablePaperExmplTrue()
    
    file = matopen("./matDir/"*"amaAlgTestMatsreliablePaperExmplTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsreliablePaperExmplTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsreliablePaperExmplTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)

end


function athanTrue()

    file = matopen("./matDir/"*"amaAlgTestMatsathanTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsathanTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatsathanTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function habitmodTrue()

    file = matopen("./matDir/"*"amaAlgTestMatshabitmodTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatshabitmodTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("./matDir/"*"amaAlgTestMatshabitmodTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 4
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)

end

end # module
