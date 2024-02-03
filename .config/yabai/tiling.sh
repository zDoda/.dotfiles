open_windows=$(yabai -m query --windows | jq '.[]')
kitty_id=
firfox_id=
notion_id=
discord_id=
notion_calendar_id=
mail_id=
messages_id=
finder_id=
apps=$(jq '.app' "$open_windows")
id=$(jq '.id' "$open_windows")
i=0
echo "TESTING: $apps"
for app_name in "$apps"; do
   echo("IDs: $id[i]"
   echo "$app_name"
   case "$app_name" in
      "kitty")
         kitty_id=$id
         ;;
      "Firefox")
         firfox_id=$id
         ;;
      "Notion")
         notion_id=$id
         ;;
      "Discord")
         discord_id=$id
         ;;
      "Notion Calendar")
         notion_calendar_id=$id
         ;;
      "Mail")
         mail_id=$id
         ;;
      "Messages")
         messages_id=$id
         ;;
      "Finder")
         finder_id=$id
         ;;
   esac
   i+=1
done

case $1 in
   "kitty")
      yabai -m window --focus $kitty_id
      ;;
   "Firefox")
      yabai -m window --focus $firefox_id
      ;;
   "Notion")
      yabai -m window --focus $notion_id
      ;;
   "Discord")
      yabai -m window --focus $discord_id
      ;;
   "Notion Calendar")
      yabai -m window --focus $notion_calendar_id
      ;;
   "Mail")
      yabai -m window --focus $mail_id
      ;;
   "Messages")
      yabai -m window --focus $messages_id
      ;;
   "Finder")
      yabai -m window --focus $finder_id
      ;;
esac
