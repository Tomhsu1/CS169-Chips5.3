class Movie < ActiveRecord::Base
  def self.all_ratings()
    return ['G', 'PG', 'PG-13', 'R']
  end

  def self.sort_by_title()
    return Movie.order("title")
  end

  def self.sort_by_release_date()
    return Movie.order("release_date")
  end

  def self.with_ratings(ratings_list)
  # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
  #  movies with those ratings
  # if ratings_list is nil, retrieve ALL movies
    if ratings_list.nil?
      return Movie.all
    end
    return Movie.where(rating: ratings_list)
  end
end