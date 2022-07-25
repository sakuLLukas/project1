class AddReleaseToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :release, :date
  end
end
