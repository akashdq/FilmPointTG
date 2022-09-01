if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BroDaddy66/FilmPoint.git /FilmPoint
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FilmPoint
fi
cd /FilmPoint
pip3 install -U -r requirements.txt
echo "Starting FilmPoint...."
python3 bot.py
