## Health Misinformation Detective
### Team Information:
 - Name: Coca Koala
 - Team Member: Yankun Zhang, Jiayue Cai, Yining Qiu, Yutao Zhang, Chengyang Xu

### Local setup instructions below. 👇🏼

### Step1. Import the MySQL Database (You need to install MySQL first)
```
cd Backend

mysqladmin -u [UserName] -p[Pasword] create backendData

exit

```

### Step2. Run the backend
```
cd Backend/djangoProject

pip install -r requirements.txt

python manage.py runserver 8888
```
#### Open a new terminal
```
cd Frontend/7381-website/src/pages/webserver

npm install

npm init -> yes
 
npm install express multer ejs

npm start

```

### Step3. Running the Frontend (Open a new terminal)
```
cd Frontend/7381-website/

npm install

npm start

```
### The libraries used in this project
```
asgiref==3.5.2
backports.zoneinfo==0.2.1
bleach==5.0.0
cffi==1.15.1
cryptography==38.0.1
Django==4.0.5
django-cors-headers==3.13.0
django-summernote==0.8.20.0
djangorestframework==3.14.0
mysqlclient==2.1.1
Pillow==9.2.0
pycparser==2.21
PyMySQL==1.0.2
pytz==2022.4
six==1.16.0
sqlparse==0.4.2
webencodings==0.5.1
```
### Thank you for viewing our project！ 
### Have a good day～ ❤️