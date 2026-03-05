Building configuration...

Current configuration : 3938 bytes
!
! Last configuration change at 00:33:50 UTC Mon Mar 1 1993
!
version 15.0
no service pad
service timestamps debug datetime msec
service timestamps log datetime msec
no service password-encryption
!
hostname ALS2
!
boot-start-marker
boot-end-marker
!
!
no aaa new-model
system mtu routing 1500
!
!
no ip domain-lookup
ip domain-name CCNP.NET
!
!
!
!
!
!
!
!
spanning-tree mode pvst
spanning-tree extend system-id
!
vlan internal allocation policy ascending
!
!
!
!
!
!
interface FastEthernet0/1
 switchport trunk native vlan 666
 switchport trunk allowed vlan 2-998,1000-4094
 switchport mode trunk
 switchport nonegotiate
!
interface FastEthernet0/2
 switchport trunk native vlan 666
 switchport trunk allowed vlan 2-998,1000-4094
 switchport mode trunk
 switchport nonegotiate
!
interface FastEthernet0/3
 switchport trunk native vlan 666
 switchport trunk allowed vlan 2-998,1000-4094
 switchport mode trunk
 switchport nonegotiate
!
interface FastEthernet0/4
 switchport trunk native vlan 666
 switchport trunk allowed vlan 2-998,1000-4094
 switchport mode trunk
 switchport nonegotiate
!
interface FastEthernet0/5
 switchport trunk native vlan 666
 switchport trunk allowed vlan 2-998,1000-4094
 switchport mode trunk
 switchport nonegotiate
!
interface FastEthernet0/6
 switchport trunk native vlan 666
 switchport trunk allowed vlan 2-998,1000-4094
 switchport mode trunk
 switchport nonegotiate
!
interface FastEthernet0/7
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/8
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/9
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/10
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/11
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/12
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/13
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/14
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/15
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/16
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/17
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/18
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/19
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/20
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/21
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/22
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/23
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/24
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface GigabitEthernet0/1
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface GigabitEthernet0/2
 switchport access vlan 999
 switchport mode access
 switchport nonegotiate
 shutdown
!
interface Vlan1
 no ip address
!
interface Vlan99
 ip address 10.1.99.104 255.255.255.0
!
ip http server
ip http secure-server
!
!
!
line con 0
 exec-timeout 0 0
 logging synchronous
line vty 0 4
 login
line vty 5 15
 login
!
end