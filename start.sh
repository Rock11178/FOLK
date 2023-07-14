if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rock11178/FOLK.git /FOLK
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FOLK
fi
cd /FOLK
pip3 install -U -r requirements.txt
echo "Starting FOLK ✅...."
python3 bot.py
