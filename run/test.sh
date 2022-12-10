#!/usr/bin/env bash
while getopts c:p: flag
do
    case "${flag}" in
        c) container=${OPTARG};;
        p) port=${OPTARG};;
    esac
done
echo "Container: $container";
echo "Port: $port";
docker run -it --rm --name $container-test -p $port:8000 github_username/repo_name:latest