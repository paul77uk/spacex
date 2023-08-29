class RemoveImageUrlFromSpaceships < ActiveRecord::Migration[7.0]
  def change
    remove_column :spaceships, :image_url
  end
end
