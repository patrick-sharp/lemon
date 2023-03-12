#! /bin/zsh

pushd $(dirname $0) # change working directory to the root of the project
swiftlint Sources Package.swift
popd
