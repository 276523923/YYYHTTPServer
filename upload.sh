echo -e "================================================\n"
echo -e "tag version 上传"

git stash
git pull origin master --tags
git stash pop

VersionString=`grep -E 's.version.*=' YYYHTTPServer.podspec`
VersionString=${VersionString##*=}
VersionNumber=`tr -d "'" <<<"$VersionString"`
echo "current version is ${VersionNumber}"

git add .
git commit -am ${VersionNumber}
git tag ${VersionNumber}
git push origin master --tags
echo -e "================================================\n"
echo -e "pod repo push "
pod repo push YYYPrivatePods YYYHTTPServer.podspec --allow-warnings --use-libraries
echo -e "================================================\n"
