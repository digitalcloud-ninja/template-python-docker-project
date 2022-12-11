#!/bin/bash
############################################################
# Help                                                     #
############################################################
help()
{
  # Display Help
  echo "This is a simple script create and launch a detached container."
  echo
  echo "Syntax: ./run [-h]"
  echo "options:"
  echo "h     Print this Help."
  echo
  echo "When setting up the project define the variables:"
  echo "-  image: repository-url/project-name:tag"
  echo "-  container: charlie-brown-xmas"
  echo "-  port: port to expose (8080)"
  echo
}

############################################################
# Main Program                                             #
############################################################
declare image="repository-url/project-name:tag"
# shellcheck disable=SC2034
declare container="my-application"
# shellcheck disable=SC2034
declare port

if [[ "${1}" = "-h" ]]; then
  help
else
  docker run -it -v "${container}"-data:/application --name "${container}" "${image}"
fi