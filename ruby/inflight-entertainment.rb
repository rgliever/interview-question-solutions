# Ryan Gliever

# Given an integer flight_length (in minutes) and an integer array movie_lengths, return true if two integers from movie_lengths add up to exactly the flight_length, and false otherwise.

def two_movies(flight_length, movie_lengths)
  movie_lengths.each do |movie_length|
    second_movie_length = flight_length - movie_length
    return true if movie_lengths.include? second_movie_length
  end
  return false
end

flight_length = 140
movie_lengths = [50, 80, 256, 23, 66, 90, 446]
puts two_movies(flight_length, movie_lengths)
