class CreateSpaceshipTags < ActiveRecord::Migration[7.0]
  def change
    create_table :spaceship_tags do |t|
      t.references :spaceship, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
