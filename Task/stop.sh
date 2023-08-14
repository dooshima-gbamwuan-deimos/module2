# trap """ echo -en '\nStopping the DB...';
# # Check if the variables are set and not empty
# if [ -z "$sql_db" ] || [ -z "$php" ] || [ -z "$web_app" ]; then
#   echo "Error: One or more variables (sql_db, php, web_app) are not set."
#   exit 1
# fi

# Stop the containers
docker stop sql_db
docker stop php
docker stop web_app
docker stop sql_db
docker stop php
docker stop web_app

# Remove the containers
docker container rm sql_db
docker container rm php
docker container rm web_app

# Make sure all containers using the network are stopped before removing the network
docker network rm connect


# trap "docker stop $sql_db; docker stop $php; docker stop $web_app;" TERM KILL 
# while :; do sleep 1; done