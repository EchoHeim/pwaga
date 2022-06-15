main_ui(){
    top_border
    echo -e "$V_line     $(title_msg "~~~~~~~~~~~~~~~~ [ Main Menu ] ~~~~~~~~~~~~~~~")     $V_line"
    hr
    echo -e "$V_line $green Basic $clear                          $V_line $green Extensions $clear        $V_line "
    main_blank_line
    echo -e "$V_line $yellow 1)$clear [stm32mp157]                 $V_line $yellow U)$clear [update_log]            $V_line "
    main_blank_line
    echo -e "$V_line $yellow 0)$clear [Build_ArmDebian]              $V_line                   $V_line "
    main_blank_line
    echo -e "$V_line $yellow 0)$clear [stm32mp157]                   $V_line                   $V_line "
    main_blank_line
    echo -e "$V_line $yellow 0)$clear [RaspBerryPi]                  $V_line                   $V_line "
    main_blank_line
    echo -e "$V_line $yellow 0)$clear [OrangePi]                     $V_line                   $V_line "

    quit_footer
}

main_blank_line() {
    title_name=""
    title=$(tab_format_title $title_name 28)
    title_2=$(tab_format_title $title_name 19)
    echo -e "$V_line $yellow   $clear $title $clear$V_line $title_2 $V_line "
    unset title title_name title_2
}

main_menu(){
    clear_msg
    print_header
    
    #check install status
    
    # klipper_status
    # moonraker_status
    # dwc2_status
    # fluidd_status
    # mainsail_status
    # octoprint_status
    # klipperscreen_status
    # MoonrakerTelegramBot_status
    # print_branch

  main_ui
  while true; do
#   echo -e "$yellow\n Your choice:$clear \c "

#   read Type_Chose


#         if [[ $Type_Chose == "B" || $Type_Chose == "b" ]]; then     # 备份;
#             cd $SHELL_ROOT_PATH/
#             . ./backUp.sh
#             exit 0
#         fi

#         if [[ $Type_Chose -eq 9 || $Type_Chose -eq 101 || $Type_Chose -eq 102 ]]; then
#             break
#         fi

#         if [[ $Type_Chose -ge 1 && $Type_Chose -le 6 ]]; then       # 跳出循环;
#             CycleSelect=0
#         fi

#         if [[ $Type_Chose -lt 1 || $Type_Chose -gt 6 ]]; then
#             tput reset      # clear screen;
#             echo -e "\n$blue/==================================================\\\\$clear"
#             echo -e "$V_line $red_flash       Selection error,Please try again!        $clear $V_line"
#             echo -e "$blue\\==================================================/$clear"
#             Type_Chose=0
#         fi

    read -p "$yellow Your choice: ${default} " action; echo

    case "$action" in
      update) do_action "main_ui";;
      0) do_action "upload_selection" "main_ui";;
      1) clear && armbian_menu && break;;
      2) clear && update_menu && break;;
      3) clear && remove_menu && break;;
      4) clear && advanced_menu && break;;

      A|a) clear && custom_function_menu && break;;
      Q|q)
        echo -e "${green}###### Good Job! ######${default}"; echo
        exit 0;;
      *)
        deny_action "main_ui";;
    esac
  done
  clear; main_menu
}
