if is_windows()
   run(`cmake -G "MinGW Makefiles" .`)
else
   run(`cmake .`)
end
run(`make`)
