@echo on
color 0b
git fetch origin && git reset --hard origin/main
timeout /t 2 /nobreak >nul
exit