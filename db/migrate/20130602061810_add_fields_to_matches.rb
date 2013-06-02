class AddFieldsToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :hometeamid, :integer
    add_column :matches, :hometeamname, :string
    add_column :matches, :awayteamid, :integer
    add_column :matches, :awayteamname, :string
  end
end
