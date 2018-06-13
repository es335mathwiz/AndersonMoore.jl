#using AMA
import AMA
using Base.Test

include("defineShiftRightTestFuncs.jl")

@testset "outer"  begin# an outer so that it does't quit on first fail
@testset "test shiftRight" begin
@test ShiftRightTests.firmvalue()
@test ShiftRightTests.firmvalue3Leads2Lags()
@test ShiftRightTests.example7()
@test ShiftRightTests.oneEquationNoLead()
@test ShiftRightTests.reliablePaperExmpl()
@test ShiftRightTests.athan()
@test ShiftRightTests.habitmod()
end


include("defineExactShiftTestFuncs.jl")
@testset "test exactShift" begin
@test ExactShiftTests.firmvalue()
@test ExactShiftTests.firmvalue3Leads2Lags()
@test ExactShiftTests.example7()
@test ExactShiftTests.oneEquationNoLead()
@test ExactShiftTests.reliablePaperExmpl()
@test ExactShiftTests.athan()
@test ExactShiftTests.habitmod()
end


include("../src/numericShift!.jl")
include("defineNumericShiftTestFuncs.jl")
@testset "test numericShift" begin
@test_broken NumericShiftTests.firmvalue()
@test_broken NumericShiftTests.firmvalue3Leads2Lags()
@test_broken NumericShiftTests.example7()
@test_broken NumericShiftTests.oneEquationNoLead()
@test_broken NumericShiftTests.reliablePaperExmpl()
@test_broken NumericShiftTests.athan()
@test_broken NumericShiftTests.habitmod()
end



include("../src/buildA!.jl")
include("defineBuildATestFuncs.jl")
@testset "test buildA" begin
@test_broken BuildATests.firmvalue()
@test_broken BuildATests.firmvalue3Leads2Lags()
@test_broken BuildATests.example7()
@test_broken BuildATests.oneEquationNoLead()
@test_broken BuildATests.reliablePaperExmpl()
@test_broken BuildATests.athan()
@test_broken BuildATests.habitmod()
end
#==#
end #outer


