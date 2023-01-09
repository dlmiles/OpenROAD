from openroad import Design, Tech
import helpers
import pdnsim_aux

tech = Tech()
tech.readLef("Nangate45.lef")
tech.readLiberty("NangateOpenCellLibrary_typical.lib")

design = Design(tech)
design.readDef("gcd.def")
design.evalTclString("read_sdc gcd.sdc")

pdnsim_aux.set_pdnsim_net_voltage(design, net="VDD", voltage=1.1)
pdnsim_aux.analyze_power_grid(design, net="VDD")
