@echo on
color 0e
git ls-files -i --exclude-standard -o -z | xargs -0 git rm --cached && timeout /t 3 /nobreak >nul
cls

exit