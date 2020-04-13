#/bin/sh
while :
do
 read -p 'Work on web(1) or app(2)? ' usemod
 if [ $usemod -eq 1 ]; then
  echo 'Starting Web'
  cd ~/Documents/arrow-clothing/arrow_web
  code .
  break
 elif [ $usemod -eq 2 ]; then
  echo 'Starting App'
  cd ~/Documents/arrow-clothing/arrow_app
  code .
  break
 else
  echo 'Wrong Input'
  continue
 fi
done

cd ~/autoscripts
gnome-terminal -e ./baseStart.sh &
gnome-terminal -e ./arrowBack.sh
