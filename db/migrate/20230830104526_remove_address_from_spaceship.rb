class RemoveAddressFromSpaceship < ActiveRecord::Migration[7.0]
  def change
    remove_column :spaceships, :email, :string
  end
end
