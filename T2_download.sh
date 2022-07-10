NEW_PROJECT=okymillion/project_1_was:demo1
NEW_DOCKER=oky_test

docker run \
    -d \
    -p 2022:8080 \
    --name $NEW_DOCKER \
    $NEW_PROJECT 
