set -o errexit  # exit on error

pip install -r requirements.txt

python manage.py createsuperuser --no-input
python manage.py migrate

if [[ $CREATE_SUPERUSER ]];
then
  python gdn-news/manage.py createsuperuser --no-input
fi