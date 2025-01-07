@echo on
cd C:\Users\lychee\dev\cse-notes
color 0a
git status
git add .
git commit -m "notes"
git push
timeout /t 2 /nobreak >nul
exit