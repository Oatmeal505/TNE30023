ALS1  BASE.CFG
_____

tclsh
puts [ open "flash:BASE.CFG " w+ ] {
hostname ALS1
ip domain-name CCNP.NET
no ip domain-lookup
interface range fa0/1-24 , g0/1-2
shutdown
vtp mode transparent
line con 0
no exec-timeout
logging synchronous
end
}
tclquit

to load into Switch:
Switch# copy BASE.CFG run

ALS2  BASE.CFG
_____

tclsh
puts [ open "flash:BASE.CFG" w+ ] {
hostname ALS2
ip domain-name CCNP.NET
no ip domain-lookup
interface range fa0/1-24 , g0/1-2
shutdown
vtp mode transparent
line con 0
no exec-timeout
logging synchronous
end
}
tclquit


DLS1  BASE.CFG
_____

tclsh
puts [ open "flash:BASE.CFG" w+ ] {
hostname DLS1
ip domain-name CCNP.NET
no ip domain-lookup
interface range g1/0/1-24 , g1/1/1-4
shutdown
vtp mode transparent
line con 0
no exec-timeout
logging synchronous
end
}
tclquit

DLS2  BASE.CFG
_____

tclsh
puts [ open "flash:BASE.CFG" w+ ] {
hostname DLS2
ip domain-name CCNP.NET
no ip domain-lookup
interface range g1/0/1-24 , g1/1/1-4
shutdown
vtp mode transparent
line con 0
no exec-timeout
logging synchronous
end
}
tclquit



ALS1/2 ALS_RESET.TCL
________________


tclsh
puts [ open "flash:als_reset.tcl" w+ ] {
typeahead "\n"
copy running-config startup-config
typeahead "\n"
erase startup-config
delete /force vlan.dat
delete /force multiple-fs
ios_config "sdm prefer lanbase-routing"
typeahead "\n"
puts "Reloading the switch in 1 minute, type reload cancel to halt"
typeahead "\n"
reload in 1 ALS_RESET.TCL SCRIPT RUN
}
tclquit


run this script by entering "tclsh als_reset.tcl"

DLS1/2 RESET.TCL
________________


tclsh
puts [ open "flash:dls_reset.tcl" w+ ] {
typeahead "\n"
copy running-config startup-config
typeahead "\n"
erase startup-config
delete /force vlan.dat
delete /force multiple-fs
typeahead "\n"
puts "Reloading the switch in 1 minute, type reload cancel to halt"
typeahead "\n"
reload in 1
}
tclquit

run this script by entering "tclsh dls_reset.tcl"
 

Router RESET.TCL
_________________

tclsh
puts [ open "flash:reset.tcl" w+ ] {
typeahead "\n"
copy running-config startup-config
typeahead "\n"
erase startup-config
typeahead "\n"
puts "Reloading the Router in 1 minute, type reload cancel to halt"
typeahead "\n"
reload in 1 
}
tclquit


run this script by entering "tclsh reset.tcl"


