Param(
    # Path to open with application exe
    [Parameter(Mandatory=$True)]
    [String] $Path,
    # Name of Registry folder
    [Parameter(Mandatory=$True)]
    [String] $Name
)

$RegFilePath = "HKEY_CLASSES_ROOT\*\shell"
$RegWithinFolderPath = "HKEY_CLASSES_ROOT\Directory\Background\shell"
$RegFolderPath = "HKEY_CLASSES_ROOT\Directory\shell"

#Reg file path
cmd.exe /c "@reg add ""$RegFilePath\$Name"" /t REG_SZ /v """" /d ""Open with $Name""" 
cmd.exe /c "@reg add ""$RegFilePath\$Name"" /t REG_EXPAND_SZ /v ""Icon"" /d ""$Path,0""" 
cmd.exe /c "@reg add ""$RegFilePath\$Name\command"" /t REG_SZ /v """" /d ""$Path\""%%1\""" 

#Reg within folder path
cmd.exe /c "@reg add ""$RegWithinFolderPath\$Name"" /t REG_SZ /v """" /d ""Open with $Name""" 
cmd.exe /c "@reg add ""$RegWithinFolderPath\$Name"" /t REG_EXPAND_SZ /v ""Icon"" /d ""$Path,0""" 
cmd.exe /c "@reg add ""$RegWithinFolderPath\$Name\command"" /t REG_SZ /v """" /d ""$Path\""%%1\""" 

#Reg folder path
cmd.exe /c "@reg add ""$RegFolderPath\$Name"" /t REG_SZ /v """" /d ""Open with $Name""" 
cmd.exe /c "@reg add ""$RegFolderPath\$Name"" /t REG_EXPAND_SZ /v ""Icon"" /d ""$Path,0""" 
cmd.exe /c "@reg add ""$RegFolderPath\$Name\command"" /t REG_SZ /v """" /d ""$Path\""%%1\""" 

