#! /bin/zsh

EXECUTABLE=lemon


pushd $(dirname $0) # change working directory to the root of the project

# build the app, and run it if the build was successful
swiftc `find . -name "*.swift"` -o $EXECUTABLE && ./$EXECUTABLE

popd # change working directory to what it was before
