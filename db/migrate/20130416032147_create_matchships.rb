class CreateMatchships < ActiveRecord::Migration
  def change
    create_table :matchships do |t|
      t.integer :team_id
      t.integer :match_id

      t.timestamps
    end
  end
end
