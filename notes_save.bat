@echo on
color 0a
git status
git add .
git commit -m "notes"
git push
timeout /t .2 /nobreak >nul
exit