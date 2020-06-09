#!/bin/sh

## zip option
THUB_ZIP_OPTION=${1}
if [ "${THUB_ZIP_OPTION}" != "-r" ] && [ "${THUB_ZIP_OPTION}" != "-j" ]; then
  echo >&2 '[ERROR]: THUB_ZIP_OPTION variable must be "-r" or "-j". Aborting...'
  exit 1
fi

## Source path
THUB_SRC=${2}
if [ -z "${THUB_SRC}" ]; then
  echo >&2 '[ERROR]: THUB_SRC variable is empty. Aborting...'
  exit 1
fi

## Check if source folder or file exists
if [ -f "${THUB_SRC}" ]; then
  echo '[ERROR]: THUB_SRC file or folder is missing. Aborting...'
  exit 1
fi

## Source files or folders for zip process
THUB_ZIP_PATH="${@:3}"
if [ -z "${THUB_ZIP_PATH}" ]; then
  echo >&2 '[ERROR]: THUB_ZIP_PATH variable is empty. Aborting...'
  exit 1
fi

## Setup environmental variables
[ -f .terrahub_build.env ] && . .terrahub_build.env

## Checking if THUB_BUILD_OK is true
if [ "${THUB_BUILD_OK}" != "true" ]; then
  echo '[INFO]: Build was NOT executed ==> zip file was NOT created.'
  exit 0
fi

zip --version > /dev/null 2>&1 || { echo >&2 'zip is missing. Aborting...'; exit 1; }
zip ${THUB_ZIP_OPTION} ${THUB_SRC} ${THUB_ZIP_PATH}
echo '[INFO]: Build was executed ==> zip file was created.'
