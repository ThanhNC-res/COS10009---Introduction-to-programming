# Task 6.1 T - use the code from last week's tasks to complete this:
# eg: 5.1T, 5.2T

module Genre
  POP, CLASSIC, JAZZ, ROCK = *1..4
end

$genre_names = ['Null', 'Pop', 'Classic', 'Jazz', 'Rock']

class Album
# NB: you will need to add tracks to the following and the initialize()
	attr_accessor :title, :artist, :genre

# complete the missing code:
	# def initialize (title, artist, genre)
	# 	# insert lines here
	# 	@title = title 
	# 	@artist = artist
	# 	@genre = genre
	# end
end

class Track
	attr_accessor :name, :location

	def initialize (name, location)
		@name = name
		@location = location
	end
end

# Reads in and returns a single track from the given file

def read_track(music_file)
	# fill in the missing code
	track_name = music_file.gets()
	track_location = music_file.gets()
	track = Track.new(track_name, track_location)
	return track
end

# Returns an array of tracks read from the given file

def read_tracks(music_file)
	count = music_file.gets().to_i()
  	tracks = Array.new()
	index = 0
  # Put a while loop here which increments an index to read the tracks
 	while (index < count) do
  		track = read_track(music_file)
  		tracks << track
		index += 1
	end
	return tracks
end

# Takes an array of tracks and prints them to the terminal

def print_tracks(tracks)
	# print all the tracks use: tracks[x] to access each track.
	tracksCount = tracks.count
	index = 0
	while (index < tracksCount) do
		print_track(tracks[index])
		index += 1 
	end
end

# Reads in and returns a single album from the given file, with all its tracks

def read_album(music_file)
	
  # read in all the Album's fields/attributes including all the tracks
  # complete the missing code
	album_title = music_file.gets
	album_artist = music_file.gets
	album_genre = music_file.gets.to_i
    case album_genre
    when 1
      Genre::POP
	when 2
      Genre::CLASSIC
    when 3 
      Genre::JAZZ
    when 4 
      Genre::ROCK
    else
      puts('Please select again')
    end
	# album = Album.new(album.title, album.artist, album.genre)
	album = Album.new()
	album.title = album_title
	album.artist = album_artist
	album.genre = album_genre
	return album
end


# Takes a single album and prints it to the terminal along with all its tracks
def print_album(album)

  # print out all the albums fields/attributes
  # Complete the missing code.
	puts(album.title.to_s)
	puts(album.artist.to_s)
	puts('Genre is ' + album.genre.to_s)
	puts($genre_names[album.genre])
	# print out the tracks

end
def print_tracks(tracks)

  # Use a while loop with a control variable index
  # to print each track. Use tracks.length to determine how
  # many times to loop.
  tracksCount = tracks.count
  index =0
  while index< tracksCount do
  # Print each track use: tracks[index] to get each track record
  print_track(tracks[index]) 
  index+=1
  end
end
# Takes a single track and prints it to the terminal
def print_track(track)
  	puts(track.name)
	puts(track.location)
end

# Reads in an album from a file and then print the album to the terminal

def main()
	music_file = File.new("album.txt", "r")
	album = read_album(music_file)
	# music_file.close()
	print_album(album)
	if music_file
    	tracks = read_tracks(music_file)
 		music_file.close
    else
    	puts "Unable to open file to read!"
    end 
	print_tracks(tracks)
end


main()