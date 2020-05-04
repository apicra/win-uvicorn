@ECHO OFF
::https://ss64.com/nt/findstr.html
netstat -a -n -o | findstr ":8000"
FOR /F "tokens=5" %%T IN ('netstat -a -n -o ^| findstr ":8000" ') DO (
echo ProcessId to kill = %%T
wmic process where "ParentProcessId=%%T" delete)
::taskkill /pid %%T /F /T
:: /T = kills child process
:: /F = forceful termination of your process
