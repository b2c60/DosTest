@echo off
:first
START MyAmcap27-1.exe|START MyAmcap27-2.exe
timeout /T 25
taskkill /FI "ImageName eq MyAmcap*"
timeout /T 5
goto first