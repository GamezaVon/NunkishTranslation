class CreateNavLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :nav_links do |t|
      t.string :href
      t.string :name
      t.boolean :iot
      
      t.timestamps
    end
  end
end
