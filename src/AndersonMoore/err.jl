function err(c) 
# err(c)
#
# Interpret the return codes generated by the AMA routines.
#
# The return code c = 2 is used by AMA_schur.m but not by AMA_eig.m.

# Original author: Gary Anderson
# Original file downloaded from:
# http://www.federalreserve.gov/Pubs/oss/oss4/code.html
# Adapted for Dynare by Dynare Team.
#
# This code is in the public domain and may be used freely.
# However the authors would appreciate acknowledgement of the source by
# citation of any of the following papers:
#
# Anderson, G. and Moore, G.
# "A Linear Algebraic Procedure for Solving Linear Perfect Foresight
# Models."
# Economics Letters, 17, 1985.
#
# Anderson, G.
# "Solving Linear Rational Expectations Models: A Horse Race"
# Computational Economics, 2008, vol. 31, issue 2, pages 95-113
#
# Anderson, G.
# "A Reliable and Computationally Efficient Algorithm for Imposing the
# Saddle Point Property in Dynamic Models"
# Journal of Economic Dynamics and Control, 2010, vol. 34, issue 3,
# pages 472-489

    if(c==1)  e="AndersonMoore: unique solution."
elseif(c==2)  e="AndersonMoore: roots not correctly computed by real_schur."
elseif(c==3)  e="AndersonMoore: too many big roots."
elseif(c==35) e="AndersonMoore: too many big roots, and q(:,right) is singular."
elseif(c==4)  e="AndersonMoore: too few big roots."
elseif(c==45) e="AndersonMoore: too few big roots, and q(:,right) is singular."
elseif(c==5)  e="AndersonMoore: q(:,right) is singular."
elseif(c==61) e="AndersonMoore: too many exact shiftrights."
elseif(c==62) e="AndersonMoore: too many numeric shiftrights."
else          e="AndersonMoore: return code not properly specified"
end

return e

end
