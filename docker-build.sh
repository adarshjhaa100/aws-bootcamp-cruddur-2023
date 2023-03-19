# Build backend API:
cd ./backend-flask && docker build -t backend-flask:v0.2 . && cd ..

# Build frontend API:
cd ./frontend-react-js && docker build -t frontent-react-js:v0.2 . && cd ..

if [ $1 = "compose" ];then 
    docker compose up --build -d
fi
