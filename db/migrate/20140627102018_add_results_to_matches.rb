class AddResultsToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :result, :integer
  end
end
