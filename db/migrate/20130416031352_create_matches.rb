class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :name
      t.datetime :date
      t.integer :team_id
      t.string :team_name

      t.timestamps
    end
  end
end
