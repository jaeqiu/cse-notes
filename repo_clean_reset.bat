@echo on
color 0b
echo Are you sure you want to lose all changes and revert to the remote version? (Y/N)
set /p choice="Enter your choice: "

:: Normalize input to lowercase
set choice=%choice:~0,1%
set choice=%choice:,,%

if "%choice%"=="y" (
    echo Proceeding with the operation...
    set /p branch="Enter the branch name to reset to (default: main): "
    if "%branch%"=="" set branch=main
    git fetch origin && git reset --hard origin/%branch% && git clean -fd
    if errorlevel 1 (
        echo An error occurred. Please check your Git repository.
        pause
        exit
    )
    echo Successfully reset the repository to the remote version.
    timeout /t 2 /nobreak >nul
) else if "%choice%"=="n" (
    echo Operation canceled.
) else (
    echo Invalid choice. Exiting...
)
pause
exit
