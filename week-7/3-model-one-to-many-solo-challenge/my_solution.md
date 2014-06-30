# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
Name, Photo, Handle, Location, Website, Bio, Header

## Release 1: Tweet Fields
Tweet, Add Photo, Add Location

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is that there is one user for every twitter handle/account and each user can produce and share multiple tweets, photos and their locations. It's a One to Many Schema.

## Release 3: Schema Design
![Twitter Schema](/week-7/imgs/TwitterSchema.png "Twitter Schema")

## Release 4: SQL Statements
<p>All the tweets for a certain user id:</p>
<pre><code>SELECT user_id, message 
	FROM Tweets WHERE user_id = 'Jane Smith'
</code></pre>

<p>The tweets for a certain user id that were made after last Wednesday:</p>
<pre><code>SELECT user_id, message 
	FROM Tweets WHERE user_id = 'Jane Smith' AND created_at > '6/25/14'
</code></pre>

<p>All the tweets associated with a given user's twitter handle:</p>
<pre><code>SELECT *
	FROM Tweets JOIN Users ON user_id WHERE Handle = 'Jane Smith'
</code></pre>

<p>The twitter handle associated with a given tweet id</p>
<pre><code>SELECT *
	FROM Tweets JOIN Users ON user_id WHERE Handle = 'Jane Smith'
</code></pre>

## Release 5: Reflection
This challenge wasn't too bad. It was pretty straight forward with the exception that I had to log into my Twitter account to find fields and understand how they are organized. (I don't tweet much.) I also had to check some of the SQL syntax to remind myself of some of them. I also discovered from the community to add inline code into markdown file. Very cool! No more adding code via images! :P