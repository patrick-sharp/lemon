#! /bin/zsh


pushd $(dirname $0) # change working directory to the root of the project

# build the app, and run it if the build was successful
swift build && 
  echo Running... &&
  ./.build/debug/lemon-wm

popd # change working directory to what it was before
