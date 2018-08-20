if is_apple()
   run(`brew tap homebrew/science`)
   run(`brew install hdf5`)
   Pkg.add("HDF5")
end
Pkg.add("MAT")

if is_windows()
   run(`cmake -G "MinGW Makefiles" .`)
else
   run(`cmake .`)
end
run(`make`)
