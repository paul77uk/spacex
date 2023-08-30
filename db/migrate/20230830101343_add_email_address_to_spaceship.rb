class AddEmailAddressToSpaceship < ActiveRecord::Migration[7.0]
  def change
    add_column :spaceships, :email, :string
    add_column :spaceships, :address, :string
  end
end
