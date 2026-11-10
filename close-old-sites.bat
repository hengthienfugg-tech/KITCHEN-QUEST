@echo off
echo This stops OLD copies of the recipe sites that may still be running
echo on ports 8000, 8123, 5050, 5100 and 7777. Kitchen Quest uses 9137, so it is not touched.
echo.
netstat -ano | findstr LISTENING | findstr ":8000 :8123 :5050 :5100 :7777"
echo.
echo Press any key to stop them, or close this window to cancel.
pause >nul
for %%P in (8000 8123 5050 5100 7777) do (
  for /f "tokens=5" %%I in ('netstat -ano ^| findstr LISTENING ^| findstr ":%%P "') do taskkill /PID %%I /F >nul 2>&1
)
echo Done. Now start Kitchen Quest with start.bat.
pause
