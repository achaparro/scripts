#!/bin/bash
# Based on https://blog.redbranch.net/2016/01/02/customise-yakuake-tabs-on-start/

/usr/bin/yakuake &
sleep 1

function instruct {
    cmd="qdbus org.kde.yakuake $1"
    eval $cmd &> /dev/null
    sleep 0.2
}

instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSession"

instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 0 ToDo"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 1 Master"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 2 'Master Server'"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 5 Scripts"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 6 Local"

instruct "/Sessions/1 org.kde.konsole.Session.sendText 'cd /home/achaparro/.todo'"
instruct "/Sessions/2 org.kde.konsole.Session.sendText 'cd /home/achaparro/code/master'"
instruct "/Sessions/3 org.kde.konsole.Session.sendText 'cd /home/achaparro/servers/master'"
instruct "/Sessions/6 org.kde.konsole.Session.sendText 'cd /home/achaparro/code/scripts'"

instruct "/Sessions/1 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/2 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/3 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/6 org.kde.konsole.Session.sendText \$'\n'"
