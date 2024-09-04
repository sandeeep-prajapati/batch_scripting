@echo off
color 0A
Title Mark's WorkStation
echo "''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''"
echo "                                                                                                                    "
echo "     _____                __   /\                             __              __          __  .__                   "
echo "    /     \ _____ _______|  | _)/ ______ __  _  _____________|  | __  _______/  |______ _/  |_|__| ____   ____      "
echo "   /  \ /  \\__  \\_  __ \  |/ / /  ___/ \ \/ \/ /  _ \_  __ \  |/ / /  ___/\   __\__  \\   __\  |/  _ \ /    \     "
echo "  /    Y    \/ __ \|  | \/    <  \___ \   \     (  <_> )  | \/    <  \___ \  |  |  / __ \|  | |  (  <_> )   |  \    "
echo "  \____|__  (____  /__|  |__|_ \/____  >   \/\_/ \____/|__|  |__|_ \/____  > |__| (____  /__| |__|\____/|___|  /    "
echo "          \/     \/           \/     \/                           \/     \/            \/                    \/     "
echo "                                                                                                                    "
echo "...................................................................................................................."
pause

echo Enter your input according to your need:
color 0E
echo "A> for setup Django Project in current directory"
echo "B> for setup React Project in current directory"
echo "C> for setup Laravel Project in current directory"
set /p choice=Please enter your choice: 

:: Perform actions based on user input
if /i "%choice%"=="A" (
    color 0B
    :: Set up Django Project
    echo Setting up Django project...
    mkdir DjangoProject
    cd DjangoProject
    python -m venv env
    call env\Scripts\activate
    pip install django
    django-admin startproject mysite .
    echo Django project setup complete.
    echo Opening in VS Code...
    start code .
    python manage.py runserver
    echo Opening in Chrome...
    start chrome http://localhost:8000
    cd ..
) else if /i "%choice%"=="B" (
    :: Set up React Project
    echo Setting up React project...
    mkdir ReactProject
    cd ReactProject
    npx create-react-app myapp
    cd myapp
    echo React project setup complete.
    echo Opening in VS Code...
    start code .
    npm start
    echo Opening in Chrome...
    start chrome http://localhost:3000
    cd ..\..
) else if /i "%choice%"=="C" (
    :: Set up Laravel Project
    echo Setting up Laravel project...
    mkdir LaravelProject
    cd LaravelProject
    composer create-project --prefer-dist laravel/laravel myapp
    cd myapp
    echo Laravel project setup complete.
    echo Opening in VS Code...
    start code .
    php artisan serve
    echo Opening in Chrome...
    start chrome http://localhost:8000
    cd ..\..
) else (
    echo Invalid choice. Please enter A, B, or C.
)

pause
 
pause                                                                                                         
                                                                                                              
                                                                                                              
                                                                                                              
