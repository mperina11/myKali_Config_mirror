#!/bin/bash

##### Check Sudo 
if [ "$EUID" -ne 0 ]                                                                                                                                       
   then echo "$(tput setaf 9)Please run as root"                                                                                                           
   exit                                                                                                                                                    
fi

# Cloner Function Def
cloner () {
   dir=$1 && shift
	arr=("$@")
	for i in "${arr[@]}"
   do
		  echo "git clone $i $dir" 
#		  git clone $i $dir
	done
}

#### Update
# sudo apt update

##### Create dirs
echo -e "$(tput setaf 3)\n\n[+](1/?) Creating dirs"
echo "$(tput setaf 7)"
sudo mkdir /opt/Linux_Local_Enum
sudo mkdir /opt/Linux_Local_Exploit
sudo mkdir /opt/Windows_Local_Enum
sudo mkdir /opt/Windows_Local_Exploit
sudo mkdir /opt/Misc


#### Create Arrays
echo -e "$(tput setaf 3)\n\n[+](2/?) Setting Arrays"
echo "$(tput setaf 7)"
declare -a arr_Linux_Local_Enum=("https://github.com/mzet-/linux-exploit-suggester" 
                                 "https://github.com/diego-treitos/linux-smart-enumeration"
				                     "https://github.com/sleventyeleven/linuxprivchecker"
				                     "https://github.com/rebootuser/LinEnum"
                                 "https://github.com/DominicBreuker/pspy")

declare -a arr_Linux_Local_Exploit=(""
                                    "")

declare -a arr_Windows_Local_Enum=(""
                                   "")

declare -a arr_Windows_Local_Exploit=(""
                                      "")
declare -a arr_Misc=("")				    


#### Cloners
echo -e "$(tput setaf 3)\n\n[+](3/?) Running Cloners"
echo "$(tput setaf 7)"
cloner "/opt/Linux_Local_Enum/" "${arr_Linux_Local_Enum[@]}" 
cloner "/opt/Linux_Local_Exploit/" "${arr_Linux_Local_Exploit[@]}"
cloner "/opt/Windows_Local_Enum/" "${arr_Windows_Local_Enum[@]}"
cloner "/opt/Windows_Local_Exploit/" "${arr_Windows_Local_Exploit[@]}"
cloner "/opt/Misc/" "${arr_Misc[@]}"
