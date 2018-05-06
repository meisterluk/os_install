#!/bin/bash

set -e

echo "::: updating packages :::"
./update_packages.sh

echo "::: installing packages :::"
./install_packages.sh

echo "::: updating packages :::"
./update_packages.sh

echo "::: downloading :::"
./download.sh
