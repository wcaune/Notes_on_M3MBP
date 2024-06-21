# [macOS 14.5] Install CMake 3.29.6

Instructions on how to install the CMake tool on macOS. This md is originally from Frederico Martins.

## Uninstall

First step should be to unsinstall any previous CMake installation. This step 
can be skipped if no CMake version was previously installed.

To uninstall any previous CMake installations use the following commands:

```sh
sudo find /usr/local/bin -type l -lname '/Applications/CMake.app/*' -delete
sudo rm -rf /Applications/CMake.app
```

## Install

The CMake tool can be obtained [here](https://cmake.org/download/). 
Copy the link for the package version that you want to install from there.

Get the CMake installer package using the following commands:

```sh
mkdir ~/Downloads/CMake
curl --silent --location --retry 3 "https://github.com/Kitware/CMake/releases/download/v3.29.6/cmake-3.29.6-macos-universal.dmg" --output ~/Downloads/CMake/cmake-macos.dmg
```

Mount the image using the following command:
```sh
yes | PAGER=cat hdiutil attach -quiet -mountpoint /Volumes/cmake-macos ~/Downloads/CMake/cmake-macos.dmg
```

Copy the CMake app to the applications folder using the following command:
```sh
cp -R /Volumes/cmake-macos/CMake.app /Applications/
```

Unmount the image using the following command:
```sh
hdiutil detach /Volumes/cmake-macos
```

Add the CMake tool to the PATH using the following command:
```sh
sudo "/Applications/CMake.app/Contents/bin/cmake-gui" --install=/usr/local/bin
```
And the screen shows:
```bash
Linked: '/usr/local/bin/cmake' -> '/Applications/CMake.app/Contents/bin/cmake'
Linked: '/usr/local/bin/ctest' -> '/Applications/CMake.app/Contents/bin/ctest'
Linked: '/usr/local/bin/cpack' -> '/Applications/CMake.app/Contents/bin/cpack'
Linked: '/usr/local/bin/cmake-gui' -> '/Applications/CMake.app/Contents/bin/cmake-gui'
Linked: '/usr/local/bin/ccmake' -> '/Applications/CMake.app/Contents/bin/ccmake'
```
## Verify

Open a new terminal window and check if the CMake tool is installed:

```sh
cmake --version
```
We got:
```bash
cmake version 3.29.6

CMake suite maintained and supported by Kitware (kitware.com/cmake).
```

## Clean up

After installing the CMake tool you can remove the downloaded installation 
image using the following command:

```sh
rm -rf ~/Downloads/CMake
```
