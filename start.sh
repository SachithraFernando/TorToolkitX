echo "Starting TTK-X engine in 10 seconds"

secs=$((1 * 10))
while [ $secs -gt 0 ]; do
   echo -ne "$secs\033[0K\r"
   sleep 1
   : $((secs--))
done

echo "ttk-x engine starting now --------"


echo "

THANK YOU FOR DEPLOYING }
  ______          ______            ____   _ __ _  __
 /_  __/___  ____/_  __/___  ____  / / /__(_) /| |/ /
  / / / __ \/ ___// / / __ \/ __ \/ / //_/ / __/   / 
 / / / /_/ / /   / / / /_/ / /_/ / / ,< / / /_/   |
/_/  \____/_/   /_/  \____/\____/_/_/|_/_/\__/_/|_|  


Version - 0.2.6-Heroku-Master-Finalised.

KANGED AND MODDED BY KANGERSHUB...... }

"

aria2c --conf-path="/aria2/aria2.conf" -D
./alive.sh & gunicorn tortoolkit:start_server --bind 0.0.0.0:$PORT --worker-class aiohttp.GunicornWebWorker & qbittorrent-nox -d & python3 -m tortoolkit