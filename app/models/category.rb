class Category < ActiveRecord::Base
  # Remember to create a migration!
  before_create do |cat|
    cat.url = cat.name.gsub(/ /, "_").downcase
  end

  has_many :posts

end
