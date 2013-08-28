class Post < ActiveRecord::Base
  # Remember to create a migration!

  before_create do |post|
    post.price = post.price.to_i
    post.url   = SecureRandom.hex
  end
end
