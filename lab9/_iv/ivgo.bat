rem -- Compile Verilog code and view output using GTKWave, 10/16/15.
rem -- Expected input: files.txt and the Verilog *.v files it lists.
rem -- Compile the files in files.txt to file a.out (default).
iverilog -c files.txt

rem -- Execute a.out and see the $monitor output.  One of the *.v source
rem -- files should create a.vcd (Value Change Dump) for post-analysis.
vvp a.out

rem -- Run gtkwave in the background, naming savefile as a.gtkw (ignore
rem -- warning that it doesn't exist yet).
start gtkwave -A a.vcd

rem -- After GTKWave manual setup, do "File -> Write Save File" or Ctrl-S
rem -- to create a.gtkw. Repeating "start gtkwave -A a.vcd" will then
rem -- use and update a.gtkw.
