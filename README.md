### Introduction  
Welcome to our project! In this project, we have created a website to store movie excerpts (videos and images).  

---

### In this Repository (hereinafter called 'Repo')  
We have uploaded some prominent update versions of our project.  

---

### Process  
We have developed a **local version** of the website, which means:  
- The database is stored on a local device.  
- To access the website, you need to type `http://localhost:3000` in the browser's address bar.  

---

### To Try It, Follow These Steps:  
1. **Download**:  
   - _MySQL RDBMS_ (MySQL Server, MySQL Router, MySQL Shell, MySQL Workbench).  
   - _NodeJS_.  

2. **Create a Database**:  
   - Name the database `media_management2`. (You can use a different name if you prefer.)  
   - Import the data from the `.sql` file in this repo into your database (choose the latest version).  

3. **Download and Extract the Project Files**:  
   - Download one of the `.zip` files available in this repo.  
   - Extract the contents of the file.  

4. **Update Database Connection**:  
   - Modify the details in the `const db = mysql.createConnection()` section in `./Content/dal/dal.js` to match your MySQL configuration.  

5. **Start the Server**:  
   - Open a terminal.  
   - Navigate to the `Content` folder inside the extracted folder.  
   - Run the command: `node server.js`.  
