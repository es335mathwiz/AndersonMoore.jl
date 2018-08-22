if is_apple()
    run(`brew install hdf5`)
    Pkg.add("HDF5")
end
Pkg.add("MAT")

#if is_windows()
#    run(`cmake -DCMAKE_IGNORE_PATH="C:/Program Files/Git/usr/bin" -G "MinGW Makefiles" .`)
#else
#    run(`cmake .`)
#end
#run(`make`)

if is_apple() || is_linux()
   run(`cmake .`)
   run(`make`)
end