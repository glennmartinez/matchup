class CreateTournamentships < ActiveRecord::Migration
  def change
    create_table :tournamentships do |t|
      t.integer :team_id
      t.integer :tournament_id

      t.timestamps
    end
  end
end
