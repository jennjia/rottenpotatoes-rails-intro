class Movie < ActiveRecord::Base
  def self.all_ratings
    return ['G', 'PG', 'PG-13', 'R']
  end 
  def self.with_ratings(ratings_list)
    if ratings_list.empty?
      self.all 
    else
      self.where(rating: ratings_list)
    end 
  end
end
