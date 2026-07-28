rule SuspiciousPowerShell {
    meta:
        description = "Detects suspicious PowerShell commands"
        author = "Huzaifa"
    
    strings:
        $s1 = "powershell" nocase
        $s2 = "-EncodedCommand" nocase
        $s3 = "DownloadString" nocase
        $s4 = "IEX" nocase
    
    condition:
        $s1 and any of ($s2, $s3, $s4)
}
