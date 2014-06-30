# U3.W7: Intro to SQLite

## Release 0: Create a dummy database
<pre><code>
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
</pre></code>

## Release 1: Insert Data 
<pre><code>
sqlite> SELECT * FROM users;

id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-06-30 05:10:30  2014-06-30 05:10:30
</pre></code>

## Release 2: Multi-line commands
<pre><code>
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
</pre></code>

## Release 3: Add a column
<pre><code>
sqlite> ALTER TABLE users ADD COLUMN Nickname VARCHAR(64);

sqlite> SELECT * FROM users;

id          first_name  last_name   email                  created_at           updated_at           Nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-06-30 05:10:30  2014-06-30 05:10:30            

sqlite> .schema

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
, Nickname VARCHAR(64));

sqlite> UPDATE users
   ...> SET Nickname = 'Kimchee'
   ...> WHERE ID = 1;

sqlite> SELECT * FROM users;

id          first_name  last_name   email                  created_at           updated_at           Nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-06-30 05:10:30  2014-06-30 05:10:30  Kimchee   

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at, Nickname)
   ...> VALUES
   ...> ('Yen', 'Tran', 'yentizzle@emailaccount.com', DATETIME('now'), DATETIME('now'), 'Yentizzle');

sqlite> SELECT * FROM users;

id          first_name  last_name   email                  created_at           updated_at           Nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-06-30 05:10:30  2014-06-30 05:10:30  Kimchee   
2           Yen         Tran        yentizzle@emailaccoun  2014-06-30 05:37:53  2014-06-30 05:37:53  Yentizzle 
</pre></code>

## Release 4: Change a value
<pre><code>
sqlite> UPDATE users SET first_name='Kimmy Lin', Nickname='Ninja Coder', updated_at=DATETIME('now') WHERE ID = 1;

sqlite> SELECT * FROM users;

id          first_name  last_name   email                  created_at           updated_at           Nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy Lin   Lin         kimmy@devbootcamp.com  2014-06-30 05:10:30  2014-06-30 05:56:04  Ninja Coder
2           Yen         Tran        yentizzle@emailaccoun  2014-06-30 05:37:53  2014-06-30 05:37:53  Yentizzle  
</pre></code>

## Release 5: Reflect
<!-- Add your reflection here -->