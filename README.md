# Staging area for Alpine release of mkdotenv

Here the generated APKLBUILD is downloaded from an mkdotenv release is generated upon.


## Scripts

Upon the `scripts` folder there's the following scripts:

* `download.sh` downloads the APKBUILD file from mkdotenv main repo.
* `fix.sh` fix any common lint errors.
* `build.sh` build APKBUILD into an  `.apk` file.

# Release

In order to release run these steps:

```
cp APKBUILD ./aports/testing/mkdotenv/APKBUILD
cd ./aports
git add testing/mkdotenv/APKBUILD
git commit --amend -m " testing/my-package: upgrade to <new-version>"
git push origin testing/mkdotenv-{version} --force
cd ../
git add aports
git commit -m "Upgraded aports"
git push origin master
```