class CreateGames < ActiveRecord::Migration[5.2]
  
  def change
    create_table :games do |t|
      t.text :title
      t.text :description
      t.text :developer
      t.text :image

      t.timestamps
    end
  end
end
