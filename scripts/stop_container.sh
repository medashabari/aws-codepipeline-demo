set -e

# Defining the container name
CONTAINER_NAME="simple-python-flask-app"

# Get the container id
CONTAINER_ID=$(sudo docker ps --filter "name=$CONTAINER_NAME" --format "{{.ID}}" | awk '{print $1}')


# Check if a running container is found
if [ -n "$CONTAINER_ID" ]; then
    echo "Stopping container: $CONTAINER_NAME"
    sudo docker stop "$CONTAINER_ID"
    echo "Removing container: $CONTAINER_NAME"
    sudo docker rm "$CONTAINER_ID"
else
    echo "No running container found with name: $CONTAINER_NAME"
fi