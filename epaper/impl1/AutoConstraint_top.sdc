
#Begin clock constraint
define_clock -name {pll|CLKOP_inferred_clock} {n:pll|CLKOP_inferred_clock} -period 3.970 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 1.985 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {clockDivider|out_derived_clock} {n:clockDivider|out_derived_clock} -period 3.970 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 1.985 -route 0.000 
#End clock constraint
