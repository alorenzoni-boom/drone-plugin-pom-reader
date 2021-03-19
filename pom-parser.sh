#!/bin/sh
VERSION=$(echo -e 'setns x=http://maven.apache.org/POM/4.0.0\ncat /x:project/x:version/text()' | /usr/bin/xmllint --shell pom.xml | grep -v /)
ARTIFACT_ID=$(echo -e 'setns x=http://maven.apache.org/POM/4.0.0\ncat /x:project/x:artifactId/text()' | /usr/bin/xmllint --shell pom.xml | grep -v /)
echo CURRENT_POM_VERSION=$VERSION >> .env
echo CURRENT_POM_ARTIFACT_ID=$ARTIFACT_ID >> .env
echo $VERSION >> .tags
sed -i "s/XXXXX/$VERSION/" Dockerfile