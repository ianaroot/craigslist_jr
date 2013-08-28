class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :category
      t.string     :title
      t.text       :content
      t.string     :email
      t.integer    :price
    end
  end
end
