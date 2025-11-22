Param($Path)
(Get-FileHash -Algorithm SHA1 $Path).Hash.ToLower()