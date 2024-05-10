python3 manage.py makemigrations --no-input
python3 manage.py migrate --no-input

# Create a superuser (replace USERNAME, EMAIL, and PASSWORD with your desired values)
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('Ahmed', 'Ahmed.centos@gmail.com', 'Ahmed123')" | python3 manage.py shell

# Check if the superuser exists
#if [ -z "$(python3 manage.py shell -c 'from django.contrib.auth import get_user_model; User = get_user_model(); print(User.objects.filter(username="USERNAME").exists())')" ]; then
    # Create a superuser if it doesn't exist
#    echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('USERNAME', 'EMAIL', 'PASSWORD')" | python3 manage.py shell
#fi

python3 manage.py runserver 0.0.0.0:8000
