#!/bin/bash

# ui total
top_border(){
    echo -e "$blue/========================================================\\\\$clear"
}

bottom_border(){
    echo -e "$blue\\========================================================/$clear"
}

blank_line(){
  echo -e "$blue|$clear                                                        $blue|$clear"
}

hr(){
    echo -e "$blue|--------------------------------------------------------|$clear"
}

quit_back_footer(){
  hr
  echo -e "$V_line                                 $purple Q/B: Quit or Back!$clear   $V_line"
  bottom_border
}

quit_footer(){
  hr
  echo -e "$V_line                                        $purple Q: Quit!$clear      $V_line"
  bottom_border
}

print_header(){
    echo ""
    top_border
    echo -e "$V_line     $(title_msg "~~~~~~~~~~~~~~~~~ [ ACTAPB ] ~~~~~~~~~~~~~~~~~")     $V_line"
    echo -e "$V_line     $(title_msg "     Auto Compile Tools And Personal Blog     ")     $V_line"
    echo -e "$V_line     $(title_msg "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")     $V_line"
    echo -e "$V_line                $yellow_flash***** Please choose *****$clear               $V_line"
    bottom_border
}

### set some messages
error_msg(){
    ERROR_MSG=$1
}

status_msg(){
    STATUS_MSG=$1
}

ok_msg(){
    OK_MSG=$1
}

title_msg(){
  echo -e "${cyan}$1${default}"
}

get_date(){
  current_date=$(date +"%y%m%d-%H%M")
}

print_unkown_cmd(){
  ERROR_MSG="Invalid command!"
}

print_msg(){
    if [[ "$ERROR_MSG" != "" ]]; then
        top_border
        echo -e "${red}"

        echo -e " $ERROR_MSG "

        echo -e "${default}"
        bottom_border
    fi
    if [[ "$STATUS_MSG" != "" ]]; then
        echo -e "${yellow}"
        echo -e "#########################################################"
        echo -e " $STATUS_MSG "
        echo -e "#########################################################"
        echo -e "${default}"
    fi
    if [ "$OK_MSG" != "" ]; then
        echo -e "${green}"
        echo -e "#########################################################"
        echo -e " $OK_MSG "
        echo -e "#########################################################"
        echo -e "${default}"
    fi
    clear_msg
}

clear_msg(){
  unset OK_MSG
  unset ERROR_MSG
  unset STATUS_MSG
}

################################################################################
### TODO: rework other menus to make use of the following functions too and make them more readable

do_action(){
  clear && print_header
  ### $1 is the action the user wants to fire
  $1
  print_msg && clear_msg
  ### $2 is the menu the user usually gets directed back to after an action is completed
  $2
}

deny_action(){
  clear && print_header
  print_unkown_cmd
  print_msg && clear_msg
  $1
}

deny_mjpg_action(){
  clear && print_header
  print_no_mjpg
  print_msg && clear_msg
}

do_action_OK(){
  clear && print_header
  print_enable_mjpg_ok
  print_msg && clear_msg
}