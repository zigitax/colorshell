#/!/bin/bash
####################################################################################
# ColorShell.sh
####################################################################################
# Description: Script to generate color variables for use in creating elegant bash
#              scripts.
####################################################################################

# Title Function
func_title(){
  # Clear (For Prettyness)
  clear

  # Print Title
  echo '============================================================================'
  echo ' ColorShell | [Version]: 2.1.0 | [Updated]: 11.04.2012'
  echo '============================================================================'
  echo ' [By]: Mike Wright (@TheMightyShiv) | https://github.com/TheMightyShiv'
  echo '============================================================================'
  echo
}

func_title
case ${1} in
  -u)
    # Shift Out The Switch
    shift

    # Get User Input On Name Of Script
    read -p '[*] Enter name for new script: ' script_name

    # Use Generic Script Name If User Fails Input
    if [[ "${script_name}" == '' ]]
    then
      script_name='NewScript.sh'
    fi

    # Print Title
    func_title
    echo "[*] Building ${script_name}"

    # Add Sha-Bang And Comments
    echo '#!/bin/bash' > ${script_name}
    echo >> ${script_name}
    echo '# ColorShell Generated Variables' >> ${script_name}

    # Case Statement To Add Color Variables
    for i in "$@"
    do
      case "${i}" in
        1)
          echo "black='\e[0;30m'" >> ${script_name}
          ;;
        2)
          echo "dgrey='\e[1;30m'" >> ${script_name}
          ;;
        3)
          echo "red='\e[0;31m'" >> ${script_name}
          ;;
        4)
          echo "lred='\e[1;31m'" >> ${script_name}
          ;;
        5)
          echo "green='\e[0;32m'" >> ${script_name}
          ;;
        6)
          echo "lgreen='\e[1;32m'" >> ${script_name}
          ;;
        7)
          echo "brown='\e[0;33m'" >> ${script_name}
          ;;
        8)
          echo "yellow='\e[1;33m'" >> ${script_name}
          ;;
        9)
          echo "blue='\e[0;34m'" >> ${script_name}
          ;;
       10)
          echo "lblue='\e[1;34m'" >> ${script_name}
          ;;
       11)
          echo "purple='\e[0;35m'" >> ${script_name}
          ;;
       12)
          echo "lpurple='\e[1;35m'" >> ${script_name}
          ;;
       13)
          echo "cyan='\e[0;36m'" >> ${script_name}
          ;;
       14)
          echo "lcyan='\e[1;36m'" >> ${script_name}
          ;;
       15)
          echo "lgrey='\e[0;37m'" >> ${script_name}
          ;;
       16)
          echo "white='\e[1;37m'" >> ${script_name}
          ;;
        *)
          echo "[Warning]: '${i}' is not a valid color number. Ignoring."
          ;;
      esac
    done

    # Final Variable To Easily Clear Colors
    echo "nocolor='\e[0m'" >> ${script_name}
    echo "[*] ${script_name} Complete."
    echo
    ;;
  -c)
    echo '[*] Printing Color Chart'
    echo
    echo -e "\e[0;30mBLACK           0,30 \e[0m"
    echo -e "\e[1;30mDARK GRAY       1,30 \e[0m"
    echo -e "\e[0;31mRED             0,31 \e[0m"
    echo -e "\e[1;31mLIGHT RED       1,31 \e[0m"
    echo -e "\e[0;32mGREEN           0,32 \e[0m"
    echo -e "\e[1;32mLIGHT GREEN     1,32 \e[0m"
    echo -e "\e[0;33mBROWN           0,33 \e[0m"
    echo -e "\e[1;33mYELLOW          1,33 \e[0m"
    echo -e "\e[0;34mBLUE            0,34 \e[0m"
    echo -e "\e[1;34mLIGHT BLUE      1,34 \e[0m"
    echo -e "\e[0;35mPURPLE          0,35 \e[0m"
    echo -e "\e[1;35mLIGHT PURPLE    1,35 \e[0m"
    echo -e "\e[0;36mCYAN            0,36 \e[0m"
    echo -e "\e[1;36mLIGHT CYAN      1,36 \e[0m"
    echo -e "\e[0;37mLIGHT GRAY      0,37 \e[0m"
    echo -e "\e[1;37mWHITE           1,37 \e[0m"
    echo
    echo "Syntax: echo -e \e[#,#m TEXT GOES HERE \e[0m"
    echo
    ;;
  -v)
    echo '[*] Printing Color Variables'
    echo
    echo "black='\e[0;30m'"
    echo "dgrey='\e[1;30m'"
    echo "red='\e[0;31m'"
    echo "lred='\e[1;31m'"
    echo "green='\e[0;32m'"
    echo "lgreen='\e[1;32m'"
    echo "brown='\e[0;33m'"
    echo "yellow='\e[1;33m'"
    echo "blue='\e[0;34m'"
    echo "lblue='\e[1;34m'"
    echo "purple='\e[0;35m'"
    echo "lpurple='\e[1;35m'"
    echo "cyan='\e[0;36m'"
    echo "lcyan='\e[1;36m'"
    echo "lgrey='\e[0;37m'"
    echo "white='\e[1;37m'"
    echo "nocolor='\e[0m'"
    echo
    ;;
  -d)
    echo '[*] Dumping Variables To Color.txt'
    echo '# ColorShell Generated Variables' > Color.txt
    echo "black='\e[0;30m'" >> Color.txt
    echo "dgrey='\e[1;30m'" >> Color.txt
    echo "red='\e[0;31m'" >> Color.txt
    echo "lred='\e[1;31m'" >> Color.txt
    echo "green='\e[0;32m'" >> Color.txt
    echo "lgreen='\e[1;32m'" >> Color.txt
    echo "brown='\e[0;33m'" >> Color.txt
    echo "yellow='\e[1;33m'" >> Color.txt
    echo "blue='\e[0;34m'" >> Color.txt
    echo "lblue='\e[1;34m'" >> Color.txt
    echo "purple='\e[0;35m'" >> Color.txt
    echo "lpurple='\e[1;35m'" >> Color.txt
    echo "cyan='\e[0;36m'" >> Color.txt
    echo "lcyan='\e[1;36m'" >> Color.txt
    echo "lgrey='\e[0;37m'" >> Color.txt
    echo "white='\e[1;37m'" >> Color.txt
    echo "nocolor='\e[0m'" >> Color.txt
    echo
    ;;
  *)
    echo '[USAGE]...:'
    echo '            ./ColorShell.sh -u [# # ...]'
    echo '            ./ColorShell.sh [OPTION]'
    echo
    echo '[COLORS]..:'
    echo '             1 = Black'
    echo '             2 = Dark Grey'
    echo '             3 = Red'
    echo '             4 = Light Red'
    echo '             5 = Green'
    echo '             6 = Light Green'
    echo '             7 = Brown'
    echo '             8 = Yellow'
    echo '             9 = Blue'
    echo '            10 = Light Blue'
    echo '            11 = Purple'
    echo '            12 = Light Purple'
    echo '            13 = Cyan'
    echo '            14 = Light Cyan'
    echo '            15 = Light Grey'
    echo '            16 = White'
    echo
    echo '[OPTIONS].:'
    echo '            -u = Build Script Using Colors'
    echo '            -c = Show Color Chart'
    echo '            -v = Show Color Variables'
    echo '            -d = Dump All Variables To File'
    echo
esac
