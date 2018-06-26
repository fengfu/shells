sudo /home/q/tools/bin/stop_tomcat.sh $2
cd /home/q/www/$2/webapps/ROOT
sudo rm -rf *
sudo cp /home/$USER/$1 .
sudo /home/q/java/default/bin/jar -xvf $1
sudo rm $1
sudo /home/q/tools/bin/start_tomcat.sh $2
cd /home/q/www/$2/logs