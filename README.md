🐍 Backend: Django 5.2 & Python 3.12
🗄️ Database: PostgreSQL 15 (Docker Isolated)
🐳 DevOps: 1-Command Setup with Docker Compose

Clone Project first

Project directory m
cd Job-Portal

Containers build aur start 
docker-compose up --build -d

for Admin user Create
docker-compose exec django_web python manage.py createsuperuser
admin Route is 

http://localhost:8000/admin/login



![Portfolio Screenshot](https://github.com/muhammadshahid3/job-portal-platform/blob/main/homepage.png?raw=true)


![Portfolio Screenshot](https://github.com/muhammadshahid3/job-portal-platform/blob/main/jobs.png?raw=true)



![Portfolio Screenshot](https://github.com/muhammadshahid3/job-portal-platform/blob/main/apply.png?raw=true)

