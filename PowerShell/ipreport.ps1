﻿get-ciminstance win32_networkadapterconfiguration | where-object ipenabled | select-object description,index,ipaddress,IPSubnet,DNSDomain,DNSHostName | Format-Table description,index,ipaddress,IPSubnet,DNSHostName,DNSDomain