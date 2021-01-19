class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.float :longitude
      t.float :latitude
      t.string :address
      t.string :title

      t.timestamps
    end
  end
end
