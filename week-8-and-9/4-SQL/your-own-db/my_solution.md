<!-- ## Show the terminal output here.  -->
Yens-MacBook-Pro:your-own-db yentran$ cat << EOF > ~/.sqliterc
> .headers on
> .mode column
> EOF
Yens-MacBook-Pro:your-own-db yentran$ sqlite3 my_database.db
-- Loading resources from /Users/yentran/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE restaurants ( 
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT, 
   ...> name VARCHAR(64) NOT NULL, 
   ...> menu VARCHAR(64) NOT NULL, 
   ...> price_range INTEGER NOT NULL, 
   ...> created_at DATETIME NOT NULL, 
   ...> updated_at DATETIME NOT NULL 
   ...> ); 
sqlite> CREATE TABLE restaurants_reviews (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> restaurant_id INTEGER NOT NULL,
   ...> review_id INTEGER NOT NULL,
   ...> FOREIGN KEY(restaurant_id) REFERENCES restaurants(id),
   ...> FOREIGN KEY(review_id) REFERENCES reviews(id)
   ...>  );
sqlite> CREATE TABLE reviews (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> food_critic VARCHAR(64) NOT NULL,
   ...> publisher VARCHAR(64) NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL,
   ...> FOREIGN KEY(food_critic) REFERENCES food_critics(id)
   ...>  );
sqlite> CREATE TABLE food_critics (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> first_name VARCHAR(64) NOT NULL,
   ...> last_name VARCHAR(64) NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL
   ...> );

*************************************************************

sqlite> SELECT * FROM restaurants
   ...> ;
id          name        menu        price_range  created_at           updated_at         
----------  ----------  ----------  -----------  -------------------  -------------------
1           Tofu House  Korean      15           2014-07-14 03:06:00  2014-07-14 03:06:00
2           Gecko Geck  Thai        8            2014-07-14 03:19:04  2014-07-14 03:19:04
3           Homeroom    American    10           2014-07-14 03:19:04  2014-07-14 03:19:04
4           Cam Huong   Vietnamese  7            2014-07-14 03:19:04  2014-07-14 03:19:04
5           Cafe Coluc  Ethiopian   13           2014-07-14 03:19:04  2014-07-14 03:19:04
6           Gourmet Ch  Chinese     9            2014-07-14 03:19:04  2014-07-14 03:19:04
7           Slow        Organic     11           2014-07-14 03:19:04  2014-07-14 03:19:04
8           Nido        Mexican     14           2014-07-14 03:19:04  2014-07-14 03:19:04

*************************************************************

sqlite> SELECT * FROM food_critics
   ...> ;
id          first_name  last_name   created_at           updated_at         
----------  ----------  ----------  -------------------  -------------------
1           Hungry      One         2014-07-14 03:25:11  2014-07-14 03:25:11
2           Picky       Eater       2014-07-14 03:25:11  2014-07-14 03:25:11
3           Eats        Everything  2014-07-14 03:25:11  2014-07-14 03:25:11
4           Loves       Junk-food   2014-07-14 03:25:11  2014-07-14 03:25:11
sqlite> 

*************************************************************

sqlite> SELECT * FROM reviews
   ...> ;
id          food_critic  publisher   created_at           updated_at         
----------  -----------  ----------  -------------------  -------------------
1           Hungry One   Hungry Man  2014-07-14 03:33:43  2014-07-14 03:33:43
2           Picky Eater  Yummy Maga  2014-07-14 03:33:43  2014-07-14 03:33:43
3           Eats Everyt  Food.org    2014-07-14 03:33:43  2014-07-14 03:33:43
4           Loves Junk-  Bon Appeti  2014-07-14 03:33:43  2014-07-14 03:33:43
sqlite> 

***************************************************************

sqlite> SELECT Restaurants.name, Restaurants.menu, Reviews.food_critic, Reviews.publisher
   ...> FROM Restaurants
   ...> INNER JOIN Reviews
   ...> ON Restaurants.id=Reviews.id;
name        menu        food_critic  publisher 
----------  ----------  -----------  ----------
Tofu House  Korean      Hungry One   Hungry Man
Gecko Geck  Thai        Picky Eater  Yummy Maga
Homeroom    American    Eats Everyt  Food.org  
Cam Huong   Vietnamese  Loves Junk-  Bon Appeti
sqlite> 