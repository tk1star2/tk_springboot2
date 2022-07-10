OLD_DOCKER=oky_test
OLD_PROJECT=okymillion/project_1_was:demo1
TARGET_WAS=project_1
NEW_PROJECT=okymillion/project_1_was:demo1


docker stop $OLD_DOCKER
docker rm $OLD_DOCKER
docker rmi $OLD_PROJECT

rm -rf $TARGET_WAS
git clone https://github.com/okymillion/$TARGET_WAS.git
cd $TARGET_WAS
cp -r oky_flutter/web/* src/main/resources/static/
./gradlew clean build
cd ..

docker build -t $NEW_PROJECT .

