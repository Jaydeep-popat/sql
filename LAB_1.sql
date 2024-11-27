CREATE DATABASE Bsc_Hons_110;
USE Bsc_Hons_110;

SELECT * FROM ARTISTS;
SELECT * FROM ALBUMS;
SELECT * FROM SONGS;


----------Part – A

--1. Retrieve a unique genre of songs.
	 SELECT DISTINCT GENRE FROM SONGS;

--2. Find top 2 albums released before 2010.
	 SELECT TOP 2 ALBUMB_TITLE FROM ALBUMS WHERE [RELEASE YEAR]<2010;

--3. Insert Data into the Songs Table. (1245, ‘Zaroor’, 2.55, ‘Feel good’, 1005)
	 INSERT INTO SONGS VALUES (1245, 'ZAROOR', 2.55, 'FEEL GOOD', 1005);
	
--4. Change the Genre of the song ‘Zaroor’ to ‘Happy’
	 UPDATE SONGS SET GENRE='HAPPY' WHERE SONG_TITLE='ZAROOR';

--5. Delete an Artist ‘Ed Sheeran’
     DELETE FROM ARTISTS WHERE ARTIST_NAME='ED SHEERAN';
	
--6. Add a New Column for Rating in Songs Table. [Ratings decimal(3,2)]
	 ALTER TABLE SONGS ADD RATIONG INT;

--7. Retrieve songs whose title starts with 'S'.
	 SELECT * FROM SONGS WHERE SONG_TITLE LIKE 'S%';

--8. Retrieve all songs whose title contains 'Everybody'.
	 SELECT * FROM SONGS WHERE SONG_TITLE LIKE '%EVERYBODY%';

--9. Display Artist Name in Uppercase.
	 SELECT UPPER(ARTIST_NAME) FROM ARTISTS;

--10. Find the Square Root of the Duration of a Song ‘Good Luck’
      SELECT SQRT(DURATION) FROM SONGS;

--11. Find Current Date.
      SELECT GETDATE() AS CURRENTDATE;

--12. Find the number of albums for each artist.
      SELECT ARTIST_ID, COUNT(ALBUMB_TITLE)  FROM ALBUMS GROUP BY ARTIST_ID;

--13. Retrieve the Album_id which has more than 5 songs in it.

--14. Retrieve all songs from the album 'Album1'. (using Subquery)
	  SELECT * FROM SONGS WHERE ALBUM_ID=(SELECT ALBUM_ID FROM ALBUMS WHERE ALBUMB_TITLE='ALBUM1');

--15. Retrieve all albums name from the artist ‘Aparshakti Khurana’ (using Subquery)
	  SELECT ALBUM_ID ,ALBUMB_TITLE FROM ALBUMS WHERE ARTIST_ID=(SELECT ARTIST_ID FROM ARTISTS WHERE ARTIST_NAME='APARASHAKTI KHURANA');


--16. Retrieve all the song titles with its album title.
      SELECT SONGS.SONG_TITLE,ALBUMS.ALBUMB_TITLE FROM ALBUMS JOIN SONGS ON ALBUMS.ALBUM_ID=SONGS.ALBUM_ID;








--17. Find all the songs which are released in 2020.

--18. Create a view called ‘Fav_Songs’ from the songs table having songs with song_id 101-105.
	  CREATE VIEW FAV_SONDS AS SELECT * FROM SONGS WHERE SONG_ID<=105;
	  SELECT * FROM FAV_SONDS ;


--19. Update a song name to ‘Jannat’ of song having song_id 101 in Fav_Songs view.








--20. Find all artists who have released an album in 2020.
	  SELECT * FROM ARTISTS JOIN ALBUMS ON ARTISTS.ARTIST_ID=ALBUMS.ARTIST_ID WHERE ALBUMS.[RELEASE YEAR]=2020;

--21. Retrieve all songs by Shreya Ghoshal and order them by duration.
	SELECT * FROM SONGS JOIN ALBUMS ON SONGS.ALBUM_ID=ALBUMS.ALBUM_ID WHERE ALBUMS.ALBUM_ID=1003;

