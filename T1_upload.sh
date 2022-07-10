NEW_PROJECT=okymillion/project_1_was:demo1

docker login
#docker tag $NEW_PROJECT $NEW_PROJECT:$NEW_TAG
docker push $NEW_PROJECT
