@echo on
::gitignore update
color 0e
git rm -r --cached .  && git status 
cls

color 0b
git add . 
cls

color 0a
git status 
cls

::standard push
color 0e
git fetch && git pull 
cls

color 0b
git status && git add . 
cls

color 0a
git commit -m "autosave" && git push 
cls

exit