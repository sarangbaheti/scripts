@ECHO OFF
curl --silent "http://xml.weather.yahoo.com/forecastrss?p=90001&u=c" | egrep "Current Conditions:|C<BR" | sed -e "s~Current Conditions:~~" -e "s~<br \/>~~" -e "s~<b>~~" -e "s~<\/b>~~" -e "s~<BR \/>~~" -e "s~<description>~~" -e "s~<\/description>~~"
