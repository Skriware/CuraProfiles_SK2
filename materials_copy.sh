#!/bin/bash
# WORKS ONLY ON MAC OS STANDARD CURA INSTALLATION
projectname=$(basename $PWD)
if [[ $projectname != $"zortrax_cura_profiles" ]]
then
	echo -e "\033[0;33mMake sure you run the script from the project main folder."
fi
echo -e "\033[0;32m->Copying material profile files\033[1;30m"
cp -rv ./materials/* /Applications/Ultimaker\ Cura.app/Contents/Resources/resources/materials/
echo $'\033[0;32m\u2714 Done'