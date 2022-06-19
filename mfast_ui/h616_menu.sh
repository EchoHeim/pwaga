function h616_ui(){
    ui_print_versions
    top_border

        echo -e "$V_line $yellow  5:$clear all build         $V_line $yellow  6:$clear update files       $V_line"
        
    echo -e "|     ${green}~~~~~~~~~~~~~~ [ Update Menu ] ~~~~~~~~~~~~~~${clear}     | "
    hr
    echo -e "|  0) $BB4U_STATUS| "
    hr
    echo -e "|  a) [Update all]       |               |              | "
    echo -e "|                        |  Local Vers:  | Remote Vers: | "
    echo -e "|  Klipper/Klipper API:  |---------------|--------------| "
    echo -e "|  1) [Klipper]          |  $LOCAL_COMMIT | $REMOTE_COMMIT | "
    echo -e "|  2) [Moonraker]        |  $LOCAL_MOONRAKER_COMMIT | $REMOTE_MOONRAKER_COMMIT | "
    echo -e "|                        |               |              | "
    echo -e "|  Klipper Webinterface: |---------------|--------------| "
    echo -e "|  3) [Mainsail]         |  $MAINSAIL_LOCAL_VER | $MAINSAIL_REMOTE_VER | "
    echo -e "|  4) [Fluidd]           |  $FLUIDD_LOCAL_VER | $FLUIDD_REMOTE_VER | "
    echo -e "|                        |               |              | "
    echo -e "|  Touchscreen GUI:      |---------------|--------------| "
    echo -e "|  5) [KlipperScreen]    |  $LOCAL_KLIPPERSCREEN_COMMIT | $REMOTE_KLIPPERSCREEN_COMMIT | "
    echo -e "|                        |               |              | "
    echo -e "|  Other:                |---------------|--------------| "
    echo -e "|  6) [DWC2-for-Klipper] |  $LOCAL_DWC2FK_COMMIT | $REMOTE_DWC2FK_COMMIT | "
    echo -e "|  7) [DWC2 Web UI]      |  $DWC2_LOCAL_VER | $DWC2_REMOTE_VER | "
    echo -e "|  8) [PrettyGCode]      |  $LOCAL_PGC_COMMIT | $REMOTE_PGC_COMMIT | "
    echo -e "|  9) [Telegram Bot]     |  $LOCAL_MOONRAKER_TELEGRAM_BOT_COMMIT | $REMOTE_MOONRAKER_TELEGRAM_BOT_COMMIT | "
    echo -e "|                        |------------------------------| "
    echo -e "|  10) [System]          |  $DISPLAY_SYS_UPDATE   | "
    back_footer
}

function h616_menu(){
 
    do_action "" "h616_ui"
    while true; do
        read -p "${cyan}Perform action:${clear} " action; echo
        case "$action" in

        a)
            do_action "update_all" "h616_ui";;
        B|b)
            clear; main_menu; break;;
        *)
            deny_action "h616_ui";;
        esac
    done
    h616_menu
}
