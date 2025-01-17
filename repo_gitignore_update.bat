@echo on
color 0e
git rm -r --cached .  && git status && timeout /t 1 /nobreak >nul
cls

color 0b
git add . && timeout /t 1 /nobreak >nul
cls

color 0a
git status && timeout /t 3 /nobreak >nul
cls

exit