# DDCO-Lab-2020
# Command to compile the files with testbench, create an image :

```
  iverilog -o image_name filename.v testbench.v
  vvp image_name
```
# Display output waveform in gtwave : 
```
gtkwave image_name.vcd
```
