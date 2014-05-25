class AddMatchesToTournament < ActiveRecord::Migration
  def change
    add_column :tournaments, :matches, :references
  end
end
