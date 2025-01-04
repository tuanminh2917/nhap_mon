### Introduction
Welcome to our project. In this project, we create a website to store movie's excerpt (video and image)

### In this repository (hereinafter called 'repo')
We uploaded some prominent update version of our project

### Process
We have developed the 'local' version of the website, which means that:
    - the database is stored in local device.
    - to access the website, you need to type http://localhost:3000 to the domain text-box

### To try it, you have to:
    - Download _MySQL RDBMS_ (MySQL Server, MySQL Route, MySQL Shell, MySQL Workbench).
    - Create a database whose name is 'media_management2', you could change the name if you want
    - Add the data of the .sql file in the repo to your database (you should choose the newest version)
    - Download _NodeJS_
    - Download one of those .zip files, extract it.
    - You have to change the details of `const db = mysql.createConnection()` in _"./Content/dal/dal.js"_ of the obtained folder after extracting to your own MySQL information
    - Use terminal (or something else), navigate to the 'Content' folder of the obtained folder after extracting.
    - Type `node server.js` to the terminal 
