@echo on
color 0b
git fetch origin && git reset --hard origin/main && git clean -fd && git rm -r --cached .  && git add . && timeout /t 2 /nobreak >nul
exit