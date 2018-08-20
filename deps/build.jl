if is_apple()
    run(`brew install hdf5`)
    Pkg.add("HDF5")
end
Pkg.add("MAT")

if is_windows()
    run(`cmake -DCMAKE_SH="CMAKE_SH-NOTFOUND" -G "MinGW Makefiles" .`)
else
    run(`cmake .`)
end
run(`make`)
