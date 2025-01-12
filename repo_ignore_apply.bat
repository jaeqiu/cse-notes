@echo on
color 0f
git rm -r --cached .  && git add . && timeout /t 2 /nobreak >nul
exit