#!/bin/bash
# WORKS ONLY ON MAC OS STANDARD CURA INSTALLATION
echo -e "\033[0;32m->Git pull\033[0m"
git pull
bash materials_copy.sh
bash profiles_copy.sh