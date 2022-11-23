if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Lazyindu/hello-demo.git /hello-demo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /hello-demo
fi
cd /hello-demo
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
