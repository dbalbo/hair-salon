This is a Hair Salon app. in this app, a user should be able to:

* view, add, update and delete stylists from the salon.
* view, add , update and delete clients from the salon and stylists.
* be able to add clients to a stylist. 

I got through most of it and ran out of time. I most likey will continue working on this in the weekend. (it is 5pm now, so I'm stopping, as instructed)

I didnt get a chance to do the delete or update method--lots of troubleshooting had to happen. Next Friday and henceforth I am going to have to use the Epicodus computers. My computer is old and doing things that I know it shouldnt. I am pasting the "meat" of the commands that I used for the psql, and you can see that it did some weird things --like adding a table of "clients_id" and also pluralized stylist_id. I didnt paste it, but it also  added tables for weird arbtrary names that I did NOT instruct it to do, so I had to delete those weird tables from the database--no idea where they came from, other than my computer is old and wonky. 

I thought I was going to make it this time, but I didnt. :( I'm going to try like hell not to be discouraged about this whole thing. (but Im sure Ill fail at that, too)

have a nice weekend. 

here is my sql(plus weird stuff) below:

debbiebalbo=# CREATE DATABASE hair_salon_test WITH TEMPLATE hair_salon;

debbiebalbo=# CREATE DATABASE hair_salon;
CREATE DATABASE
debbiebalbo=# CREATE TABLE clients (name varchar, stylist_id int, id serial PRIMARY KEY);
CREATE TABLE
debbiebalbo=# \dt
 public | clients | table | debbiebalbo

debbiebalbo=# \dt
 public | clients | table | debbiebalbo

debbiebalbo=# \d
 public | clients        | table    | debbiebalbo
 public | clients_id_seq | sequence | debbiebalbo

debbiebalbo=# CREATE TABLE stylists (name varchar, id serial PRIMARY KEY);
CREATE TABLE
debbiebalbo=# \dt
 public | clients  | table | debbiebalbo
 public | stylists | table | debbiebalbo

debbiebalbo=# \d
 public | clients         | table    | debbiebalbo
 public | clients_id_seq  | sequence | debbiebalbo
 public | stylists        | table    | debbiebalbo
 public | stylists_id_seq | sequence | debbiebalbo




hair_salon=# ALTER TABLE clients ADD stylist_id int;

debbiebalbo=# CREATE DATABASE hair_salon_test WITH TEMPLATE hair_salon;

