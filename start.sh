if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sarthakkale16/aadicode2.git /EvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /aadicode2
fi
cd /aadicode2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
