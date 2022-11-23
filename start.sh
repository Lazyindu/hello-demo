if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Lazyindu/hellodemo.git /hellodemo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /hellodemo
fi
cd /hellodemo
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
