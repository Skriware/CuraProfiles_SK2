#!/bin/bash
# WORKS ONLY ON MAC OS STANDARD CURA INSTALLATION
projectname=$(basename $PWD)
if [[ $projectname != $"CuraProfiles_SK2" ]]
then
	echo -e "\033[0;33mMake sure you run the script from the project's scripts folder."
fi
echo -e "\033[0;32m->Copying printer definition files\033[1;30m"
cp -v ../skriware_2.def.json /Applications/Ultimaker\ Cura.app/Contents/Resources/resources/definitions/
cp -v ../skriware_2_extruder_0.def.json /Applications/Ultimaker\ Cura.app/Contents/Resources/resources/extruders/
cp -v ../skriware_2_extruder_1.def.json /Applications/Ultimaker\ Cura.app/Contents/Resources/resources/extruders/
echo -e "\033[0;32m->Copying printer profile files\033[1;30m"
cp -rv ../configs/* /Applications/Ultimaker\ Cura.app/Contents/Resources/resources/quality/
echo $'\033[0;32m\u2714 Done'
