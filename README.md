# Cloud File Storage System

## Project Overview
Cloud File Storage System is a web-based application that allows users to securely store and manage files online. Users can register, log in, upload files, view uploaded files, download files, and delete files through a simple and user-friendly interface.

## Features
- User Registration
- User Login & Logout
- Secure File Upload
- View Uploaded Files
- Download Files
- Delete Files
- Dashboard with Total Files Count

## Technologies Used

### Frontend
- HTML
- CSS
- JSP
### Backend
- Java
- Servlets
### Database
- SQLite
### Server
- Apache Tomcat 9
### IDE
- IntelliJ IDEA
### Version Control
- Git
- GitHub

## Software Requirements

- Java JDK 17 (or above)
- IntelliJ IDEA
- Apache Tomcat 9
- SQLite
- Git (Optional)

## How to Run the Project

### Step 1
I created the CloudFileStorage project in IntelliJ IDEA.

### Step 2
I added Apache Tomcat 9 server in IntelliJ IDEA.

### Step 3
I added the SQLite JDBC library to the project.

### Step 4
I created the SQLite database file cloudstorage.db.

### Step 5
I created the required database tables:
- users
- files

### Step 6
I developed the JSP pages:
- index.jsp
- login.jsp
- register.jsp
- dashboard.jsp
- UploadFile.jsp
- ViewFiles.jsp

### Step 7
I created the Servlet classes for:
- Login
- Registration
- Upload
- Download
- Delete
- Logout

### Step 8
I configured all servlet mappings in web.xml.

### Step 9
I run the project using Apache Tomcat 9 from IntelliJ IDEA.

### Step 10
I opened the application in the browser:
http://localhost:7777/CloudFileStorage/

### Step 11
I registered a new user account and logged in.

### Step 12
I tested all features:
- Upload File
- View Files
- Download File
- Delete File
- Logout
