class Movies < ActiveRecord::Base
  attr_accessible :imdb_id, :imdb_url, :plot, :rating, :title, :year
end
