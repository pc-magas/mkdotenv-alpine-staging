# Staging area for Alpine release of mkdotenv

Here the generated APKLBUILD is downloaded from an mkdotenv release is generated upon.


## Scripts

Upon the `scripts` folder there's the following scripts:

* `download.sh` downloads the APKBUILD file from mkdotenv main repo.
* `fix.sh` fix any common lint errors.
* `build.sh` build APKBUILD into an  `.apk` file.

# Release

Currently there's a Merge request upon aports therefore follow these steps:

```
cp APKBUILD ./aports/testing/mkdotenv/APKBUILD
cd ./aports
git add testing/mkdotenv/APKBUILD
git commit --amend -m "testing/mkdotenv: new aport"
git push origin master --force
cd ../
git add aports
git commit -m "Upgraded aports"
git push origin master
```