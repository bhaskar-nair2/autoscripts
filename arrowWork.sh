#/bin/sh
x=1
while [ $x -le 5 ]
do
 read -p 'Work on web(1) or app(2)? ' usemod
 x=$(( $x + 1 ))
 if [ $usemod -eq 1 ]; then
  echo 'Starting Web'
  cd ~/Documents/arrow-clothing/arrow_web
  code .
  break
 elif [ $usemod -eq 2 ]; then
  echo 'Starting App'
  cd ~/Documents/arrow-clothing/arrow_app
  code .
  adb reverse tcp:3000 tcp:3000
  break
 else
  echo 'Wrong Input'
  continue
 fi
done

cd ~/autoscripts
bash -c ./baseStart.sh &
bash -c ./arrowBack.sh
