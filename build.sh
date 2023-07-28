set -o errexit  # exit on error

pip install -r requirements.txt

python manage.py migrate
python manage.py createsuperuser --no-input

if [[ $CREATE_SUPERUSER ]];
then
  python gdn-news/manage.py createsuperuser --no-input
fi