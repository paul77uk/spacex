class ChangeSpaceshipAvailabilityDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:spaceships, :available, true)
  end
end
