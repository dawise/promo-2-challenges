require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute(" SELECT Artist.Name, Track.Name, Album.Title
  FROM Artist
  INNER JOIN Album, Track
  ON Album.albumID = Track.TrackID
  AND Album.Artist.Id = Artist.ArtistID ")
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
( "SELECT g.name  ")
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
end