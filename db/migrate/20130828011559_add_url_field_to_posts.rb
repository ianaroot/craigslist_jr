class AddUrlFieldToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :url, :string
  end

  def down
    remove_column :posts, :url
  end
end
