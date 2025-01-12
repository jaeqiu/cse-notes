@echo on
color 0e
git fetch && git pull &&timeout /t 1 /nobreak >nul
cls

color 0b
git status
git add .
timeout /t 1 /nobreak >nul
cls

color 0a
git commit -m "autosave"
git push
timeout /t 1 /nobreak >nul
cls

exit