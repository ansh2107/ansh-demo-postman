## Postman Web Chat
Postman Web chat is a real time web chat application based on MVC architecture built using NodeJs,AngularJS,MySQL.

## TechStack
1. Express Framework
2. NodeJs
3. AngularJs
4. Sockets
5. MySQL

## Screenshots
Sreenshots can be found in Postman/screenshots folder.

## Features
1. Login/Logout and Registration.
2. Real time chat.
3. Search through chat list.
4. Add and search new friend.
5. Show online/offline for chat list users.
6. Show older conversations for particular selected chat.
7. Show typing status as "isTyping..." at real time.  
8. Show timestamp for conversations.
9. Notification Toaster for incoming messages.

## Installation
Make sure you have Node.js and npm installed.

1. Clone/Download repository or Extract the archive folder
   ```shell
   $ git clone https://github.com/ansh2107/ansh-demo-postman.git
   ```
   
2. Install Dependencies
   ```shell
   $ npm install
   ```

3. Setup and import the chat.sql file in Postman/mysql/chat.sql into mysql database.

4. Edit configuration file in Postman/middleware/db.js with your
   mysql database credentials.

5.  Start the application
    ```shell
    $ node server.js
    ```

Your app should now be running on localhost:3000.
