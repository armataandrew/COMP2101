write-output "  "
Write-Output "hardware description"
get-ciminstance win32_computersystem  
write-output "  "
write-output "operating system name and version number"
get-ciminstance win32_operatingsystem | select-object Name,Version 
write-output "  " 
write-output "processor"
get-ciminstance win32_processor | select-object 
write-output "  "
write-output "summary of RAM"
get-ciminstance win32_processor | select-object Description,L1CashSpeed,L2CacheSpeed,L3CacheSpeed,NumberOfCores,L1CacheSize,L2CacheSize,L3CacheSize
write-output "total RAM"
get-ciminstance win32_physicalmemory | select-object Manufacturer,Description,Capacity,banklable | format-table -AutoSize 
Write-Output "  "
WRITE-OUTPUT "DISKS"
$diskdrives = Get-CIMInstance CIM_diskdrive

  foreach ($disk in $diskdrives) {
      $partitions = $disk|get-cimassociatedinstance -resultclassname CIM_diskpartition
      foreach ($partition in $partitions) {
            $logicaldisks = $partition | get-cimassociatedinstance -resultclassname CIM_logicaldisk
            foreach ($logicaldisk in $logicaldisks) {
                     new-object -typename psobject -property @{Manufacturer=$disk.Manufacturer
                                                               Location=$partition.deviceid
                                                               Drive=$logicaldisk.deviceid
                                                               "Size(GB)"=$logicaldisk.size / 1gb -as [int]
                                                               }
           }
      }
  }
Write-Output " "
Write-Output "network adapter"
get-ciminstance win32_networkadapterconfiguration | where-object ipenabled | select-object description,index,ipaddress,IPSubnet,DNSDomain,DNSHostName | Format-Table description,index,ipaddress,IPSubnet,DNSHostName,DNSDomain 
write-output "  "
write-output "video card"
get-ciminstance win32_videocontroller | select-object name,Description,CurrentHorizontalResolution,CurrentVerticalResolution
