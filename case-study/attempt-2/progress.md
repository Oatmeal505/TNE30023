• The connection between DLS1 and DLS2 will be a layer 3 Etherchannel using LACP. DLS1 will use the IP address 172.16.200.1/30 and DLS2 will use 172.16.200.2/30
• Create etherchannels for each set of trunk links between each of the switches.
o The Port-channels on interfaces G1/0/1 G1/02, fa0/1 and fa0/2 will use PAgP
o The Port-channels on interfaces G1/0/3, G1/0/4, fa0/3 and fa0/4 will be statically assigned
• Make sure that all inter-switch links are statically set as 802.1q trunks
• All trunks will use VLAN 800 as the native VLAN
• All switches are to use VTP version 3 in the VTP domain CISCO
• Place all switches in VTP transparent modea
• Create the following VLANs locally on each switch
o 10 Staff
o 20 Students
o 100 Management
o 110 Voice
o 800 Native 
o 999 Parking
• Configure the following interfaces as access ports
VLAN 10:
ALS1 Fa0/7-12
ALS2 Fa0/13-24
VLAN 20:
ALS1: Fa0/13-24
ALS2: Fa0/7-12
 VLAN100
DLS1 Gi1/0/7
• Place all unused interfaces into the Parking VLAN, and make sure in access mode and shut 
down
• Configure Spanning-tree as follows on each switch: MST instance 1 – VLAN 10, 20. Make primary on DLS1 and Secondary on DLS2. MST instance 2 – VLAN 100, 110. Make primary on DLS2 and Secondary on DLS1.
• For Management Van 100 create SVI addresses on each switch. Make sure you can ping each device. Use x.x.x.2 DLS1, x.x.x.3 DLS2, x.x.x.101 ALS1, x.x.x.102 ALS2
• Create SVIs for vlans 10,20,110. Use x.x.x.2 DLS1, x.x.x.3 DLS2
• Create a layer 3 interface on DLS1 G1/0/11 and DLS2 G1/0/12. Give the following IP addresses: DLS1 192.168.0.2/30, DLS2 192.168.1.2/30. 
• Create HSRPv2 on the two DL Switches so that DLS1 is active for VLANs 10, 20, and DLS2 is active for VLANs 100, 110. Include the pre-empt option and configure interface tracking on the links to the GATEWAY router.
• Configure GATEWAY with relevant IP addresses. The Lo0 address is to represent an address somewhere on the Internet. This address must not be advertised through EIGRP, instead a default route is to point to the Lo0, and the default route propagated into EIGRP.
• Configure EIGRP with an AS of 100 disable automatic summarization.
• Enable PortFast on all access ports
• Enable BPDUguard on all access ports
• Enable UDLD protection on all switchports interfaces on all switches, using the command to place the port in the error-disable state if a violation occurs.
• Configure DHCP snooping to trust all trunk ports on the ALSwitches. Limit the rate of DHCP requests on all user access ports to 15 pps.
• On the DLSwitches allow the DCHP information to be trusted.
• Configure ALS1 Fa0/13-24 for port security. Allow only up to three MAC addresses to be learned on each port and then shut down if traffic from other MAC addresses. 
• Configure ALS2 Fa0/18 to only allow the MAC address 1234.1234.1234 and to go to protected mode if a violation occurs.
• You are going to add a server farm to DLS2, but some servers in the farm is to be isolated from each other.
• On all Switches add VLAN 150 Server_Farm
• Add routing and HRSP information for VLAN150 making DLS2 the primary and DLS1 the standby. Use the network 172.16.150.0/24
• On DLS2 create VLAN 151 as an isolated VLAN, and VLAN 152 as a community VLAN. 
Associate VLANs 151,152 with the Primary VLAN 150
• Configure DLS2 interface Gi1/0/15-17 for the isolated VLAN 151 and interfaces Gi1/0/18-20 for the community VLAN 152.
• Create an ACL to separate the student and staff VLANs
• A temporary staff member is going to be assigned to ASL1 Fa0/9 with an IP address of 
172.16.10.150. Assign this interface to the Staff VLAN and create a VACL to block access to the rest of the Staff VLAN, and still have access to the rest of the network.
• Configure SSH on GATEWAY to allow remote access. Use the ip domain name as 
sshremote.lab. Add a user Admin password sshuser. Test ssh access with PuTTY. 
• Set the correct UTC time, configure DLS1 as an NTP server and then set the correct time zone.

• Configure DLS2, ALS1, and ASL2 to use the Management Network to synchronize the time with the NTP server.

